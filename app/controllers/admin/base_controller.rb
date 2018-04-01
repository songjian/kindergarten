class Admin::BaseController < ApplicationController
  before_action :need_login?
  helper_method :current_administrator
  protect_from_forgery with: :exception
  layout 'admin'

  def need_login?
    redirect_to admin_login_path unless logged_in?
  end

  #一旦账号密码正确，则成功登录，同时在session中记录session[:administrator_id]
  def log_in(administrator)
    session[:administrator_id] = administrator.id
  end
  #如果用户允许在本地保存登录信息，则保存cookies
  def remeber(administrator)
    #先把本次登录的remeber_token保存至数据库
    administrator.remeber
    #然后把remeber_token保存到cookies中，同时把administrator_id也保存在cookies中
    # cookies[:remeber_token] = { value: administrator.remeber_token, expires: 10.days.from_now.utc}
    # cookies.signed[:administrator_id] = { value: administrator.id, expires: 10.days.from_now.utc}
    cookies.permanent[:remeber_token] = administrator.remeber_token
    cookies.permanent.signed[:administrator_id] = administrator.id
  end
  #获取当前登录用户，如未登录，则为nil.@current_administrator这个实例变量是为了避免每次调用current_administrator方法都去查询一遍数据库的情况。
  def current_administrator
    #先判断session中是否为nil
    if (administrator_id = session[:administrator_id])
      @current_administrator ||= Administrator.find_by(id: administrator_id)
    #再判断cookies中是否保存了登录信息
    else (administrator_id = cookies.signed[:administrator_id])
      administrator = Administrator.find_by(id: administrator_id)
      #如果cookies中保存了，再用authenticated?这个方法判断cookies[:remeber_token]或者数据库中的remeber_digest是否一致。
      if administrator && administrator.authenticated?(cookies[:remeber_token])
        log_in(administrator)
        @current_administrator = administrator
      end
    end
  end
  #用来判断用户是否登录的方法
  def logged_in?
    !current_administrator.nil?
  end
  #用来清空持久性登录信息
  def forget(administrator)
    administrator.forget #将administrator.remeber_digest重置为nil
    #删除cookies中的登录信息
    cookies.delete(:administrator_id)
    cookies.delete(:remeber_token)
  end
  #退出，同时删除session中的信息
  def log_out
    forget(current_administrator)
    session.delete(:administrator_id)
    @current_administrator = nil
  end
end

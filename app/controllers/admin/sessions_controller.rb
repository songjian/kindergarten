class Admin::SessionsController < Admin::BaseController
  skip_before_action :need_login?
  include Admin::SessionsHelper
  layout 'blank'

  def new
    @session = Administrator.new
  end

  def create
    login = session_params[:login]
    password = session_params[:password]
    #Administrator.find_by_login(login)是新增加的一个类方法，用来实现name或者email的登录
    administrator = Administrator.find_by_login(login)
    #authenticate是has_secure_password引入的一个方法，用来判断administrator的密码与页面中传过来的密码是否一致
    if administrator && administrator.authenticate(password)
      log_in(administrator) #SessionsHelper中的方法
      #判断是否要持续性的记住用户的登录状态
      session_params[:remeber_me] == "1" ? remeber(administrator) : forget(administrator)
      redirect_to admin_path
    else
      flash.now[:danger] = "用户名和密码不正确。"
      render 'new'
    end
  end

  def destroy
    log_out if logged_in? #SessionsHelper中的方法
    redirect_to admin_path
  end

  private
  def session_params
    params.require(:session).permit(:login, :password, :remeber_me)
  end

end

# ## Schema Information
#
# Table name: `administrators`
#
# ### Columns
#
# Name                       | Type               | Attributes
# -------------------------- | ------------------ | ---------------------------
# **`id`**                   | `bigint(8)`        | `not null, primary key`
# **`expire_at(过期时间)`**      | `datetime`         |
# **`login(登录名)`**           | `string`           |
# **`nickname(昵称)`**         | `string`           |
# **`password_digest(密码)`**  | `string`           |
# **`state(状态 1:启用 2:禁用)`**  | `integer`          |
# **`created_at`**           | `datetime`         | `not null`
# **`updated_at`**           | `datetime`         | `not null`
#

class Administrator < ApplicationRecord
  has_secure_password
  attr_accessor :remeber_digest
  validates :password, :length => { :minimum => 6 }

  #用来加密remeber_token，然后保存到数据库中的remeber_digest中去
  def self.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  #生成随机的字符串
  def self.new_token
    SecureRandom.urlsafe_base64
  end
  #每次登录成功或者注册后，都会调用remeber的方法，将remeber_token这个随机字符串加密后更新到数据库中的remeber_digest的值
  def remeber
    self.remeber_token = Administrator.new_token
    self.update_attribute(:remeber_digest, Administrator.digest(remeber_token))
  end
  #用来判断cookies[:remeber_token]中的值通过BCrypt加密后，是否与数据库中的一致
  def authenticated?(remeber_token)
    return false if remeber_digest.nil?
    BCrypt::Password.new(remeber_digest).is_password?(remeber_token)
  end
  #退出登录时调用，将数据库是的rember_digest值置为nil
  def forget
    self.update_attribute(:remeber_digest, nil)
  end
end

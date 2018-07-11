# ## Schema Information
#
# Table name: `users`
#
# ### Columns
#
# Name                            | Type               | Attributes
# ------------------------------- | ------------------ | ---------------------------
# **`id`**                        | `bigint(8)`        | `not null, primary key`
# **`contact_phone(联系电话)`**       | `string`           |
# **`login(登录名)`**                | `string`           |
# **`name(姓名)`**                  | `string`           |
# **`nickname(昵称)`**              | `string`           |
# **`password_digest(密码)`**       | `string`           |
# **`remeber_digest`**            | `string`           |
# **`type(类型)`**                  | `string`           |
# **`created_at`**                | `datetime`         | `not null`
# **`updated_at`**                | `datetime`         | `not null`
# **`user_position_id(用户职务id)`**  | `integer`          |
#

class User < ApplicationRecord
  has_secure_password
  attr_accessor :remeber_digest
  validates :password, :length => { :minimum => 6 }

  scope :sorted, -> { order(created_at: :asc) }

  belongs_to :user_position

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
    self.remeber_token = User.new_token
    self.update_attribute(:remeber_digest, User.digest(remeber_token))
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

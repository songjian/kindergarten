class CreateAdministrators < ActiveRecord::Migration[5.1]
  def change
    create_table :administrators, comment: '超级管理员' do |t|
      t.string :login, comment: '登录名'
      t.string :nickname, comment: '昵称'
      t.string :password_digest, comment: '密码'
      t.datetime :expire_at, comment: '过期时间'
      t.integer :state, comment: '状态 1:启用 2:禁用'

      t.timestamps
    end
  end
end

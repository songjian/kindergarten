class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users, comment: '用户' do |t|
      t.string :login, comment: '登录名'
      t.string :password_digest, comment: '密码'
      t.string :remeber_digest

      t.timestamps
    end
  end
end

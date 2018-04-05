class AddTypeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :type, :string, comment: '类型'
    add_column :users, :name, :string, comment: '姓名'
    add_column :users, :nickname, :string, comment: '昵称'
    add_column :users, :contact_phone, :string, comment: '联系电话'
  end
end

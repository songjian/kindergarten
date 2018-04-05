class AddKindToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :kind, :integer, default: 2, comment: '类型 1:BOSS 2:猎头'
  end
end

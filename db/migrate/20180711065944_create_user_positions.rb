class CreateUserPositions < ActiveRecord::Migration[5.1]
  def change
    create_table :user_positions, comment: '用户职务' do |t|
      t.string :name, comment: '职务名称'

      t.timestamps
    end

    # users表增加关联关系
    add_column :users, :user_position_id, :integer, comment: '用户职务id'

    # 补充园长和教师的必要字段
    add_column :users, :english_name, :string, comment: '英文名称'
    add_column :users, :bio, :text, comment: '个人简历'
    add_column :users, :nationality, :string, comment: '国籍'
  end
end

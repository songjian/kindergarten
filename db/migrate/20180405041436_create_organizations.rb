class CreateOrganizations < ActiveRecord::Migration[5.1]
  def change
    create_table :organizations, comment: '组织' do |t|
      t.string :name, comment: '组织名称'
      t.text :describe, comment: '组织描述'
      t.string :contact_name, comment: '联系人'
      t.string :contact_phone, comment: '联系电话'
      t.string :address, comment: '地址'
      t.string :type, comment: '单表继承类型'

      t.timestamps
    end
  end
end

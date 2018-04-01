class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies, comment: '公司' do |t|
      t.string :name, comment: '公司名称'
      t.text :describe, comment: '公司描述'
      t.string :contact_name, comment: '联系人'
      t.string :contact_phone, comment: '联系电话'
      t.string :address, comment: '公司地址'

      t.timestamps
    end
  end
end

class CreateDemands < ActiveRecord::Migration[5.1]
  def change
    create_table :demands, comment: '需求' do |t|
      t.text :content, comment: '需求描述'
      t.integer :kind, default: 1, comment: '需求类型'
      t.integer :state, default: 0, comment: '状态'
      t.integer :contact_kind, default: 1, comment: '联系方式类型'
      t.string :contact, comment: '联系方式'

      t.timestamps
    end
  end
end

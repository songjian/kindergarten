class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products, comment: '产品' do |t|
      t.string :name, comment: '产品名称'
      t.string :abstract, comment: '简介'
      t.text :content, comment: '产品说明'

      t.timestamps
    end
  end
end

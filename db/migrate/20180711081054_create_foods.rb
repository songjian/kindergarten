class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods, comment: '食物表' do |t|
      t.string :name, comment: '食物名称'
      t.text :description, comment: '简介'
      t.integer :food_category_id, comment: '食物分类id'

      t.timestamps
    end
  end
end

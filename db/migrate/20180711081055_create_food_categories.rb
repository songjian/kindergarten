class CreateFoodCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :food_categories, comment: '食物分类表' do |t|
      t.string :name, comment: '食物分类名'

      t.timestamps
    end
  end
end

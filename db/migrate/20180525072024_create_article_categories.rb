class CreateArticleCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :article_categories, comment: '资讯分类' do |t|
      t.string :name, comment: '分类名'

      t.timestamps
    end
  end
end

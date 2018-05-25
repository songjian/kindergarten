class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles, comment: '资讯' do |t|
      t.string :title, comment: '标题'
      t.text :content, comment: '正文'
      t.integer :article_category_id, comment: '资讯分类id'

      t.timestamps
    end
  end
end

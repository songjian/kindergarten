class AddAuthorToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :author, :string, comment: '作者'
  end
end

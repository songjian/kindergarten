class CreatePages < ActiveRecord::Migration[5.1]
  def change
    create_table :pages, comment: '单页' do |t|
      t.string :title, comment: '标题'
      t.string :alias, comment: '别名(英文)'
      t.text :content, comment: '正文'

      t.timestamps
    end
  end
end

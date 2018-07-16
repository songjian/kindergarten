class CreateAnnouncements < ActiveRecord::Migration[5.1]
  def change
    create_table :announcements, comment: '公告表' do |t|
      t.string :title, comment: '标题'
      t.text :content, comment: '正文'

      t.timestamps
    end
  end
end

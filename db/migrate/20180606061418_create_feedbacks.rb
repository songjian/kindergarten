class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks, comment: '反馈' do |t|
      t.integer :kind, default: 0, comment: '反馈主题'
      t.text :content, comment: '反馈内容'
      t.integer :state, default: 0, comment: '状态 0未处理 1已处理'

      t.timestamps
    end
  end
end

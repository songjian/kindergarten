class CreateEnrolls < ActiveRecord::Migration[5.1]
  def change
    create_table :enrolls, comment: '报名表' do |t|
      t.string :name, comment: '儿童姓名'
      t.integer :enroll_batch_id, comment: '报名批次'
      t.integer :gender, default: 1, comment: '1男 2女'
      t.datetime :birthday, comment: '出生日期'

      t.timestamps
    end
  end
end

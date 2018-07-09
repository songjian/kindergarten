class CreateEnrolls < ActiveRecord::Migration[5.1]
  def change
    create_table :enrolls, comment: '报名表' do |t|
      t.string :name, comment: '儿童姓名'
      t.integer :enroll_batch_id, comment: '报名批次'
      t.integer :gender, default: 1, comment: '0女 1男'
      t.datetime :birthday, comment: '出生日期'
      t.integer :status, default: 0, comment: '报名状态 0提交 1成功 2拒绝'

      t.timestamps
    end
  end
end

class CreateEnrolls < ActiveRecord::Migration[5.1]
  def change
    create_table :enrolls, comment: '报名表' do |t|
      t.string :child_name, comment: '儿童姓名'
      t.string :child_id_number, comment: '儿童身份证号'
      t.integer :enroll_batch_id, comment: '报名批次'
      t.integer :gender, default: 1, comment: '0女 1男'
      t.datetime :birthday, comment: '出生日期'
      t.string :parent_name, comment: '家长姓名'
      t.string :parent_id_number, comment: '家长身份证号'
      t.string :parent_contact, comment: '家长联系方式'
      t.integer :parent_child_relationship, comment: '亲子关系 父亲 母亲 爷爷 奶奶 外公 外婆'
      t.integer :status, default: 0, comment: '报名状态 0提交 1成功 2拒绝'

      t.timestamps
    end
  end
end

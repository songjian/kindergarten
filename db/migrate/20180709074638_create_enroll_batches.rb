class CreateEnrollBatches < ActiveRecord::Migration[5.1]
  def change
    create_table :enroll_batches, comment: '报名批次' do |t|
      t.string :name, comment: '批次名称'
      t.integer :state, comment: '状态 1启用 2禁用'

      t.timestamps
    end
  end
end

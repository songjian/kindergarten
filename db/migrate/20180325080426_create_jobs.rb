class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs, comment: '职位表' do |t|
      t.string :name, comment: '职位名称'
      t.text :description, comment: '职位描述'

      t.timestamps
    end
  end
end

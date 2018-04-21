class CreateOrganizationCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :organization_categories do |t|
      t.string :name, comment: '分类名称'

      t.timestamps
    end

    add_column :organizations, :organization_category_id, :integer, comment: '分类id'
  end
end

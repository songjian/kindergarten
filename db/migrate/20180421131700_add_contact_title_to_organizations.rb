class AddContactTitleToOrganizations < ActiveRecord::Migration[5.1]
  def change
    add_column :organizations, :contact_title, :string, comment: '联系人职位'
  end
end

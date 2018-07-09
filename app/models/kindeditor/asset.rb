# ## Schema Information
#
# Table name: `kindeditor_assets`
#
# ### Columns
#
# Name              | Type               | Attributes
# ----------------- | ------------------ | ---------------------------
# **`id`**          | `bigint(8)`        | `not null, primary key`
# **`asset`**       | `string`           |
# **`asset_type`**  | `string`           |
# **`file_size`**   | `integer`          |
# **`file_type`**   | `string`           |
# **`owner_type`**  | `string`           |
# **`created_at`**  | `datetime`         | `not null`
# **`updated_at`**  | `datetime`         | `not null`
# **`owner_id`**    | `integer`          |
#

class Kindeditor::Asset < ActiveRecord::Base
  self.table_name = 'kindeditor_assets'
  mount_uploader :asset, Kindeditor::AssetUploader
  validates_presence_of :asset
  before_save :update_asset_attributes
  
  private
  def update_asset_attributes
    if asset.present? && asset_changed?
      self.file_size = asset.file.size
      self.file_type = asset.file.content_type
    end
  end
end

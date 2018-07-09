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

class Kindeditor::Media < Kindeditor::Asset
  mount_uploader :asset, Kindeditor::MediaUploader
end

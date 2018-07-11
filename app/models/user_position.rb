# ## Schema Information
#
# Table name: `user_positions`
#
# ### Columns
#
# Name                | Type               | Attributes
# ------------------- | ------------------ | ---------------------------
# **`id`**            | `bigint(8)`        | `not null, primary key`
# **`name(职务名称)`**    | `string`           |
# **`created_at`**    | `datetime`         | `not null`
# **`updated_at`**    | `datetime`         | `not null`
#

class UserPosition < ApplicationRecord
  has_many :users
  scope :sorted, -> { order(created_at: :asc) }
end

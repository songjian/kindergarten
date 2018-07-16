# ## Schema Information
#
# Table name: `announcements`
#
# ### Columns
#
# Name                | Type               | Attributes
# ------------------- | ------------------ | ---------------------------
# **`id`**            | `bigint(8)`        | `not null, primary key`
# **`content(正文)`**   | `text`             |
# **`title(标题)`**     | `string`           |
# **`created_at`**    | `datetime`         | `not null`
# **`updated_at`**    | `datetime`         | `not null`
#

class Announcement < ApplicationRecord
  validates :title, presence: true
  scope :sorted, -> { order(created_at: :desc) }
end

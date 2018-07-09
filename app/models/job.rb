# ## Schema Information
#
# Table name: `jobs`
#
# ### Columns
#
# Name                     | Type               | Attributes
# ------------------------ | ------------------ | ---------------------------
# **`id`**                 | `bigint(8)`        | `not null, primary key`
# **`description(职位描述)`**  | `text`             |
# **`name(职位名称)`**         | `string`           |
# **`created_at`**         | `datetime`         | `not null`
# **`updated_at`**         | `datetime`         | `not null`
#

class Job < ApplicationRecord

  validates :name, presence: true

  scope :sorted, -> { order(created_at: :desc) }
end

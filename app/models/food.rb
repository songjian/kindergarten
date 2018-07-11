# ## Schema Information
#
# Table name: `foods`
#
# ### Columns
#
# Name                            | Type               | Attributes
# ------------------------------- | ------------------ | ---------------------------
# **`id`**                        | `bigint(8)`        | `not null, primary key`
# **`description(简介)`**           | `text`             |
# **`name(食物名称)`**                | `string`           |
# **`created_at`**                | `datetime`         | `not null`
# **`updated_at`**                | `datetime`         | `not null`
# **`food_category_id(食物分类id)`**  | `integer`          |
#

class Food < ApplicationRecord
  belongs_to :food_category
  scope :sorted, -> { order(created_at: :desc) }
end

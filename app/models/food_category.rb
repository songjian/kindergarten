# ## Schema Information
#
# Table name: `food_categories`
#
# ### Columns
#
# Name                | Type               | Attributes
# ------------------- | ------------------ | ---------------------------
# **`id`**            | `bigint(8)`        | `not null, primary key`
# **`name(食物分类名)`**   | `string`           |
# **`created_at`**    | `datetime`         | `not null`
# **`updated_at`**    | `datetime`         | `not null`
#

class FoodCategory < ApplicationRecord
  has_many :foods
  scope :sorted, -> { order(created_at: :asc) }
end

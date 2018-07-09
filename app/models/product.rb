# ## Schema Information
#
# Table name: `products`
#
# ### Columns
#
# Name                 | Type               | Attributes
# -------------------- | ------------------ | ---------------------------
# **`id`**             | `bigint(8)`        | `not null, primary key`
# **`abstract(简介)`**   | `string`           |
# **`content(产品说明)`**  | `text`             |
# **`name(产品名称)`**     | `string`           |
# **`created_at`**     | `datetime`         | `not null`
# **`updated_at`**     | `datetime`         | `not null`
#

class Product < ApplicationRecord
  validates :name, :abstract, :content, presence: true
  scope :sorted, -> { order(created_at: :desc) }
end

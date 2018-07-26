# ## Schema Information
#
# Table name: `article_categories`
#
# ### Columns
#
# Name                | Type               | Attributes
# ------------------- | ------------------ | ---------------------------
# **`id`**            | `bigint(8)`        | `not null, primary key`
# **`name(分类名)`**     | `string`           |
# **`created_at`**    | `datetime`         | `not null`
# **`updated_at`**    | `datetime`         | `not null`
#

class ArticleCategory < ApplicationRecord

  validates :name, presence: true

  scope :sorted, -> { order(created_at: :asc) }

  has_many :articles
end

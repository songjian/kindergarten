# ## Schema Information
#
# Table name: `organization_categories`
#
# ### Columns
#
# Name                | Type               | Attributes
# ------------------- | ------------------ | ---------------------------
# **`id`**            | `bigint(8)`        | `not null, primary key`
# **`name(分类名称)`**    | `string`           |
# **`created_at`**    | `datetime`         | `not null`
# **`updated_at`**    | `datetime`         | `not null`
#

class OrganizationCategory < ApplicationRecord
  has_many :organizations, dependent: :nullify

  scope :sorted, -> { order(:id) }
end

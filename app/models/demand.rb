# ## Schema Information
#
# Table name: `demands`
#
# ### Columns
#
# Name                        | Type               | Attributes
# --------------------------- | ------------------ | ---------------------------
# **`id`**                    | `bigint(8)`        | `not null, primary key`
# **`contact(联系方式)`**         | `string`           |
# **`contact_kind(联系方式类型)`**  | `integer`          | `default("QQ")`
# **`content(需求描述)`**         | `text`             |
# **`kind(需求类型)`**            | `integer`          | `default("网站定制开发")`
# **`state(状态)`**             | `integer`          | `default("submit")`
# **`created_at`**            | `datetime`         | `not null`
# **`updated_at`**            | `datetime`         | `not null`
#

class Demand < ApplicationRecord
  validates :content, :kind, :contact_kind, :contact, presence: true

  scope :sorted, -> { order(created_at: :desc) }

  enum kind: { '网站定制开发': 1, '企业管理软件': 2 }
  enum state: { 'submit': 0, 'read': 1 }
  enum contact_kind: { 'QQ': 1, '微信': 2, '手机号': 3 }
end

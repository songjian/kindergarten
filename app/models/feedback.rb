# ## Schema Information
#
# Table name: `feedbacks`
#
# ### Columns
#
# Name                       | Type               | Attributes
# -------------------------- | ------------------ | ---------------------------
# **`id`**                   | `bigint(8)`        | `not null, primary key`
# **`content(反馈内容)`**        | `text`             |
# **`kind(反馈主题)`**           | `integer`          | `default(NULL)`
# **`state(状态 0未处理 1已处理)`**  | `integer`          | `default("unhandled")`
# **`created_at`**           | `datetime`         | `not null`
# **`updated_at`**           | `datetime`         | `not null`
#

class Feedback < ApplicationRecord
  validates :content, :kind, presence: true

  scope :sorted, -> { order(created_at: :desc) }

  enum kind: { 'BUG反馈': 1, '意见与建议': 2 }
  enum state: { 'unhandled': 0, 'handled': 1 }
end

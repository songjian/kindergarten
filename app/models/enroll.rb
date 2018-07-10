# ## Schema Information
#
# Table name: `enrolls`
#
# ### Columns
#
# Name                            | Type               | Attributes
# ------------------------------- | ------------------ | ---------------------------
# **`id`**                        | `bigint(8)`        | `not null, primary key`
# **`birthday(出生日期)`**            | `datetime`         |
# **`gender(0女 1男)`**             | `integer`          | `default("male")`
# **`name(儿童姓名)`**                | `string`           |
# **`status(报名状态 0提交 1成功 2拒绝)`**  | `integer`          | `default("submit")`
# **`created_at`**                | `datetime`         | `not null`
# **`updated_at`**                | `datetime`         | `not null`
# **`enroll_batch_id(报名批次)`**     | `integer`          |
#

class Enroll < ApplicationRecord
  belongs_to :enroll_batch

  scope :sorted, -> { order(created_at: :desc) }

  enum gender: ['female', 'male']
  enum status: ['submit', 'success', 'reject'] # 已提交、报名成功、报名拒绝
end

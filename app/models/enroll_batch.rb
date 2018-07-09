# ## Schema Information
#
# Table name: `enroll_batches`
#
# ### Columns
#
# Name                     | Type               | Attributes
# ------------------------ | ------------------ | ---------------------------
# **`id`**                 | `bigint(8)`        | `not null, primary key`
# **`name(批次名称)`**         | `string`           |
# **`state(状态 1启用 2禁用)`**  | `integer`          |
# **`created_at`**         | `datetime`         | `not null`
# **`updated_at`**         | `datetime`         | `not null`
#

class EnrollBatch < ApplicationRecord
  has_many :enrolls
end

# ## Schema Information
#
# Table name: `enrolls`
#
# ### Columns
#
# Name                         | Type               | Attributes
# ---------------------------- | ------------------ | ---------------------------
# **`id`**                     | `bigint(8)`        | `not null, primary key`
# **`birthday(出生日期)`**         | `datetime`         |
# **`gender(1男 2女)`**          | `integer`          | `default(1)`
# **`name(儿童姓名)`**             | `string`           |
# **`created_at`**             | `datetime`         | `not null`
# **`updated_at`**             | `datetime`         | `not null`
# **`enroll_batch_id(报名批次)`**  | `integer`          |
#

class Enroll < ApplicationRecord
  belongs_to :enroll_batch
end

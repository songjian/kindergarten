# ## Schema Information
#
# Table name: `administrators`
#
# ### Columns
#
# Name                       | Type               | Attributes
# -------------------------- | ------------------ | ---------------------------
# **`id`**                   | `bigint(8)`        | `not null, primary key`
# **`expire_at(过期时间)`**      | `datetime`         |
# **`login(登录名)`**           | `string`           |
# **`nickname(昵称)`**         | `string`           |
# **`password_digest(密码)`**  | `string`           |
# **`state(状态 1:启用 2:禁用)`**  | `integer`          |
# **`created_at`**           | `datetime`         | `not null`
# **`updated_at`**           | `datetime`         | `not null`
#

require 'test_helper'

class AdministratorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

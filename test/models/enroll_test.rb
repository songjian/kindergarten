# ## Schema Information
#
# Table name: `enrolls`
#
# ### Columns
#
# Name                                                     | Type               | Attributes
# -------------------------------------------------------- | ------------------ | ---------------------------
# **`id`**                                                 | `bigint(8)`        | `not null, primary key`
# **`birthday(出生日期)`**                                     | `datetime`         |
# **`child_id_number(儿童身份证号)`**                            | `string`           |
# **`child_name(儿童姓名)`**                                   | `string`           |
# **`gender(0女 1男)`**                                      | `integer`          | `default("male")`
# **`parent_child_relationship(亲子关系 父亲 母亲 爷爷 奶奶 外公 外婆)`**  | `integer`          |
# **`parent_contact(家长联系方式)`**                             | `string`           |
# **`parent_id_number(家长身份证号)`**                           | `string`           |
# **`parent_name(家长姓名)`**                                  | `string`           |
# **`status(报名状态 0提交 1成功 2拒绝)`**                           | `integer`          | `default("submit")`
# **`created_at`**                                         | `datetime`         | `not null`
# **`updated_at`**                                         | `datetime`         | `not null`
# **`enroll_batch_id(报名批次)`**                              | `integer`          |
#

require 'test_helper'

class EnrollTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

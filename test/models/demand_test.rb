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

require 'test_helper'

class DemandTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

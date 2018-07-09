# ## Schema Information
#
# Table name: `organizations`
#
# ### Columns
#
# Name                                  | Type               | Attributes
# ------------------------------------- | ------------------ | ---------------------------
# **`id`**                              | `bigint(8)`        | `not null, primary key`
# **`address(地址)`**                     | `string`           |
# **`contact_name(联系人)`**               | `string`           |
# **`contact_phone(联系电话)`**             | `string`           |
# **`contact_title(联系人职位)`**            | `string`           |
# **`describe(组织描述)`**                  | `text`             |
# **`name(组织名称)`**                      | `string`           |
# **`type(单表继承类型)`**                    | `string`           |
# **`created_at`**                      | `datetime`         | `not null`
# **`updated_at`**                      | `datetime`         | `not null`
# **`organization_category_id(分类id)`**  | `integer`          |
#

require 'test_helper'

class EnterpriseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

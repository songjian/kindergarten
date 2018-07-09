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

require 'test_helper'

class OrganizationCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

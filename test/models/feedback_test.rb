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

require 'test_helper'

class FeedbackTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

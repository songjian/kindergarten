# ## Schema Information
#
# Table name: `articles`
#
# ### Columns
#
# Name                               | Type               | Attributes
# ---------------------------------- | ------------------ | ---------------------------
# **`id`**                           | `bigint(8)`        | `not null, primary key`
# **`content(正文)`**                  | `text`             |
# **`title(标题)`**                    | `string`           |
# **`created_at`**                   | `datetime`         | `not null`
# **`updated_at`**                   | `datetime`         | `not null`
# **`article_category_id(资讯分类id)`**  | `integer`          |
#

require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# ## Schema Information
#
# Table name: `pages`
#
# ### Columns
#
# Name                 | Type               | Attributes
# -------------------- | ------------------ | ---------------------------
# **`id`**             | `bigint(8)`        | `not null, primary key`
# **`alias(别名(英文))`**  | `string`           |
# **`content(正文)`**    | `text`             |
# **`title(标题)`**      | `string`           |
# **`created_at`**     | `datetime`         | `not null`
# **`updated_at`**     | `datetime`         | `not null`
#

require 'test_helper'

class PageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

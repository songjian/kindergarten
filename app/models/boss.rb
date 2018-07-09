# ## Schema Information
#
# Table name: `users`
#
# ### Columns
#
# Name                       | Type               | Attributes
# -------------------------- | ------------------ | ---------------------------
# **`id`**                   | `bigint(8)`        | `not null, primary key`
# **`contact_phone(联系电话)`**  | `string`           |
# **`login(登录名)`**           | `string`           |
# **`name(姓名)`**             | `string`           |
# **`nickname(昵称)`**         | `string`           |
# **`password_digest(密码)`**  | `string`           |
# **`remeber_digest`**       | `string`           |
# **`type(类型)`**             | `string`           |
# **`created_at`**           | `datetime`         | `not null`
# **`updated_at`**           | `datetime`         | `not null`
#

class Boss < User
end

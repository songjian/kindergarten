# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  login           :string
#  password_digest :string
#  remeber_digest  :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  type            :string
#  name            :string
#  nickname        :string
#  contact_phone   :string
#

class Boss < User
end

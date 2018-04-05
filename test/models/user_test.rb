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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

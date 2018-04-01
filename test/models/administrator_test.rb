# == Schema Information
#
# Table name: administrators
#
#  id              :integer          not null, primary key
#  login           :string
#  nickname        :string
#  password_digest :string
#  expire_at       :datetime
#  state           :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class AdministratorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

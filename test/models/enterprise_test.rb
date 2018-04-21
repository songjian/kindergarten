# == Schema Information
#
# Table name: organizations
#
#  id            :integer          not null, primary key
#  name          :string
#  describe      :text
#  contact_name  :string
#  contact_phone :string
#  address       :string
#  type          :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  contact_title :string
#

require 'test_helper'

class EnterpriseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

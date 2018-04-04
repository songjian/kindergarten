# == Schema Information
#
# Table name: companies
#
#  id            :integer          not null, primary key
#  name          :string
#  describe      :text
#  contact_name  :string
#  contact_phone :string
#  address       :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Company < ApplicationRecord
  validates :name, :contact_name, :contact_phone, presence: true

  scope :sorted, -> { order(created_at: :desc) }
end

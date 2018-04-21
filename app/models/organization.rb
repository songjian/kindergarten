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

class Organization < ApplicationRecord

  validates :name, :contact_name, :contact_phone, presence: true

  scope :sorted, -> { order(created_at: :desc) }

  belongs_to :organization_category, optional: true

end

class Organization < ApplicationRecord

  validates :name, :contact_name, :contact_phone, presence: true

  scope :sorted, -> { order(created_at: :desc) }

end

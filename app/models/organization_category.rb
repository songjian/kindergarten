class OrganizationCategory < ApplicationRecord
  has_many :organizations, dependent: :nullify

  scope :sorted, -> { order(:id) }
end

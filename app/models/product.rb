class Product < ApplicationRecord
  validates :name, :abstract, :content, presence: true
  scope :sorted, -> { order(created_at: :desc) }
end

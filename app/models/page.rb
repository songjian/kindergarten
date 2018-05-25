class Page < ApplicationRecord

  validates :title, :alias, presence: true

  scope :sorted, -> { order(created_at: :desc) }
end

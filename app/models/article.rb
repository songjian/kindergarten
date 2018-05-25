class Article < ApplicationRecord

  validates :title, presence: true

  scope :sorted, -> { order(created_at: :desc) }

  belongs_to :article_category
end

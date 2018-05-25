class ArticleCategory < ApplicationRecord

  validates :name, presence: true

  scope :sorted, -> { order(created_at: :desc) }

  has_many :articles
end

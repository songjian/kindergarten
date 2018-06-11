class Demand < ApplicationRecord
  validates :content, :kind, :contact_kind, :contact, presence: true

  scope :sorted, -> { order(created_at: :desc) }

  enum kind: { '网站定制开发': 1, '企业管理软件': 2 }
  enum state: { 'submit': 0, 'read': 1 }
  enum contact_kind: { 'QQ': 1, '微信': 2, '手机号': 3 }
end

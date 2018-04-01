# == Schema Information
#
# Table name: jobs
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Job < ApplicationRecord

  scope :sorted, -> { order(created_at: :asc) }
end

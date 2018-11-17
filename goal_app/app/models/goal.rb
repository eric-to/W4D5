# == Schema Information
#
# Table name: goals
#
#  id         :integer          not null, primary key
#  summary    :text             not null
#  user_id    :integer          not null
#  private    :boolean          default(FALSE)
#  complete   :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Goal < ApplicationRecord
  validates :user_id, :summary, presence: true
  validates :private, :complete, inclusion: { in: [true, false] }
  validates :summary, length: { minimum: 3 }
  
  belongs_to :user
end

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

require 'test_helper'

class GoalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

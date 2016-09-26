# == Schema Information
#
# Table name: vote_answers
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  answer_id  :integer
#

require 'test_helper'

class VoteAnswerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

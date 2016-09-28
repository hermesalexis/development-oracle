# == Schema Information
#
# Table name: commentary_answers
#
#  id         :integer          not null, primary key
#  commentary :text
#  user_id    :integer
#  answer_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class CommentaryAnswerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

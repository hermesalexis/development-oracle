# == Schema Information
#
# Table name: commentary_questions
#
#  id          :integer          not null, primary key
#  commentary  :text
#  user_id     :integer
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class CommentaryQuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

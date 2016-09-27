# == Schema Information
#
# Table name: vote_questions
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :integer
#  user_id     :integer
#

class VoteQuestion < ApplicationRecord
  belongs_to :question
  belongs_to :user
end

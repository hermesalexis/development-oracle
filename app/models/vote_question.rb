# == Schema Information
#
# Table name: vote_questions
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  Question_id :integer
#  User_id     :integer
#

class VoteQuestion < ApplicationRecord
  belongs_to :question
  belongs_to :user
end

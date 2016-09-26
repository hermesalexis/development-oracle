# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  answer      :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  question_id :integer
#

class Answer < ApplicationRecord
  has_many :vote_answers
  belongs_to :user
  belongs_to :question
end

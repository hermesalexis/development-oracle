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
  has_many :commentary_answers
  belongs_to :user
  belongs_to :question

  validates :answer, 
             presence:true 

  def voted_answer_by?(user)
    vote_answers.exists?(user: user)
  end

end

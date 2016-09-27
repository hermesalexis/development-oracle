# == Schema Information
#
# Table name: questions
#
#  id          :integer          not null, primary key
#  question    :string(300)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Question < ApplicationRecord
  
  belongs_to :user
  has_many   :vote_questions
  has_many   :answers
  has_many   :commentary_questions

  validates :question,:description, presence: true

  def voted_question_by?(user)
    vote_questions.exists?(user: user)
  end


end

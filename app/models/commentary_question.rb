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

class CommentaryQuestion < ApplicationRecord
  belongs_to :user
  belongs_to :question

  validates :commentary, 
             presence: true 
end

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

class CommentaryAnswer < ApplicationRecord
  belongs_to :user
  belongs_to :answer
  validates :commentary,
            presence: true
end

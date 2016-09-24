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

class VoteAnswer < ApplicationRecord
	belongs_to :answer
	belongs_to :user
end

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
end

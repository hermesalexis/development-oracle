class AddAnswerToVoteAnswers < ActiveRecord::Migration[5.0]
  def change
    add_reference :vote_answers, :answer, foreign_key: true
  end
end

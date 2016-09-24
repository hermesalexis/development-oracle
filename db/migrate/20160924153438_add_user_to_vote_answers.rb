class AddUserToVoteAnswers < ActiveRecord::Migration[5.0]
  def change
    add_reference :vote_answers, :user, foreign_key: true
  end
end

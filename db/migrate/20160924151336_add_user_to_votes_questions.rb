class AddUserToVotesQuestions < ActiveRecord::Migration[5.0]
  def change
    add_reference :vote_questions, :user, foreign_key: true
  end
end

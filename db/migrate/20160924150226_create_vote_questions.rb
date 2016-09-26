class CreateVoteQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :vote_questions do |t|

      t.timestamps
    end
  end
end

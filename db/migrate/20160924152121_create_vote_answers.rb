class CreateVoteAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :vote_answers do |t|

      t.timestamps
    end
  end
end

class CreateCommentaryAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :commentary_answers do |t|
      t.text :commentary
      t.references :user, foreign_key: true
      t.references :answer, foreign_key: true

      t.timestamps
    end
  end
end

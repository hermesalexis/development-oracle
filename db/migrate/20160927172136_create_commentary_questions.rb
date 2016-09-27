class CreateCommentaryQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :commentary_questions do |t|
      t.text :commentary
      t.references :user, foreign_key: true
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end

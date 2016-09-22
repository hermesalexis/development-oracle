class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :question, limit: 300
      t.text :description

      t.timestamps
    end
  end
end

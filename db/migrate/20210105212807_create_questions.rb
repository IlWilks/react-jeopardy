class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.string :answer4
      t.string :correct_answer
      t.belongs_to :card, null: false, foreign_key: true

      t.timestamps
    end
  end
end

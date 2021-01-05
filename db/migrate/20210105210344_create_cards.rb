class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :question
      t.string :answer
      t.integer :points
      t.string :category

      t.timestamps
    end
  end
end
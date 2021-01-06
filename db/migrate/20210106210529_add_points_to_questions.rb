class AddPointsToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :points, :integer
  end
end

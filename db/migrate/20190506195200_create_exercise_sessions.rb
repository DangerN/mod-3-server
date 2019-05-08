class CreateExerciseSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :exercise_sessions do |t|
      t.references :session, foreign_key: true
      t.references :exercise, foreign_key: true
      t.integer :weight
      t.integer :reps
      t.integer :distance
      t.integer :time

      t.timestamps
    end
  end
end

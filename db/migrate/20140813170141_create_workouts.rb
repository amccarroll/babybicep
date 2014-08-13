class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :trainer
      t.string :intensity
      t.text :program

      t.timestamps
    end
  end
end

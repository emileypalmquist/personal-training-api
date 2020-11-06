class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :type
      t.integer :frequency
      t.text :info
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

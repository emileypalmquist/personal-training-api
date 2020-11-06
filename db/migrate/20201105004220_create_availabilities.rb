class CreateAvailabilities < ActiveRecord::Migration[6.0]
  def change
    create_table :availabilities do |t|
      t.datetime :datetime
      t.string :location

      t.timestamps
    end
  end
end

class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.datetime :dateR
      t.integer :numHours
      t.string :responsible
      t.string :reason

      t.timestamps
    end
  end
end

class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end

class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.datetime :star
      t.datetime :end

      t.integer :laboratory_id
      t.integer :course_id
      t.integer :day_id

      t.timestamps
    end
  end
end

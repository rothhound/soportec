class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.time :start
      t.time :end
      t.references :laboratory
      t.references :course
      t.references :day

      t.timestamps
    end
    add_index :schedules, :laboratory_id
    add_index :schedules, :course_id
    add_index :schedules, :day_id
  end
end

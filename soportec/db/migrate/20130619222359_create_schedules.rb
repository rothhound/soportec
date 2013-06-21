class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :star
      t.string :end
      t.string :day

      t.integer :reservation_id 
      t.integer :laboratory_id
      t.integer :course_id

      t.timestamps
    end
  end
end

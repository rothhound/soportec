class CreateCoursesProfessors < ActiveRecord::Migration
  def change
    create_table :courses_professors do |t|
      t.references :course
      t.references :professor

      t.timestamps
    end
    add_index :courses_professors, :course_id
    add_index :courses_professors, :professor_id
  end
end

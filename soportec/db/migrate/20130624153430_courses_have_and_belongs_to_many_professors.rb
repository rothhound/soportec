class CoursesHaveAndBelongsToManyProfessors < ActiveRecord::Migration
  def self.up
    create_table :courses_professors, :id => false do |t|
      t.references :course, :professor
    end
  end

  def self.down
    drop_table :courses_professors
  end
end

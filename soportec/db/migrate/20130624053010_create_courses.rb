class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :code
      t.string :name
      t.references :eap
      t.references :group

      t.timestamps
    end
  end
end

class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :code
      t.string :name
      t.references :eap
      t.references :group

      t.timestamps
    end
    add_index :courses, :eap_id
    add_index :courses, :group_id
  end
end

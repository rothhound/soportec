class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :code
      t.string :name

      t.integer :eap_id
      t.integer :group_id

      t.timestamps
    end
  end
end

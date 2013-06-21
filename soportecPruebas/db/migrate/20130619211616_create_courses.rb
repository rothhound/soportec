class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :code
      t.string :name
      t.string :group

      t.integer :eap_id

      t.timestamps
    end
  end
end

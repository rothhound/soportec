class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :code
      t.string :name
      t.string :lastname
      t.references :course

      t.timestamps
    end
    add_index :professors, :course_id
  end
end

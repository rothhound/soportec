class CreateLaboratories < ActiveRecord::Migration
  def change
    create_table :laboratories do |t|
      t.integer :number
      t.integer :capacity
      t.integer :floor
      t.integer :numComputers
      t.integer :airConditioning
      t.integer :projector
      t.integer :sound

      t.integer :computer_id
      t.integer :state_id
      t.integer :laboratory_id
      t.integer :course_id

      t.timestamps
    end
  end
end

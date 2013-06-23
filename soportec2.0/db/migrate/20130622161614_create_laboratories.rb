class CreateLaboratories < ActiveRecord::Migration
  def change
    create_table :laboratories do |t|
      t.integer :number
      t.integer :numComputers
      t.integer :capacity
      t.integer :airConditioning
      t.integer :floor
      t.integer :projector
      t.integer :sound

      t.timestamps
    end
  end
end

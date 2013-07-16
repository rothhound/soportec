class CreateLaboratories < ActiveRecord::Migration
  def change
    create_table :laboratories do |t|
      t.string :name
      t.integer :number
      t.integer :capacity
      t.integer :floor
      t.integer :numComputers
      t.integer :airConditioning
      t.integer :projector
      t.integer :sound

      t.timestamps
    end
  end
end

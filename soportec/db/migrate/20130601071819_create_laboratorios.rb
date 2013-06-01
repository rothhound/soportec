class CreateLaboratorios < ActiveRecord::Migration
  def change
    create_table :laboratorios do |t|
      t.integer :numero
      t.integer :piso
      t.integer :encargado_id
      t.integer :aforo
      t.integer :num_maquinas

      t.timestamps
    end
  end
end

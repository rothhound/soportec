class CreateLaboratorySoftwares < ActiveRecord::Migration
  def change
    create_table :laboratory_softwares do |t|
      t.references :laboratory
      t.references :software

      t.timestamps
    end
    add_index :laboratory_softwares, :laboratory_id
    add_index :laboratory_softwares, :software_id
  end
end

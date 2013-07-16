class CreateLaboratoriesSoftwares < ActiveRecord::Migration
  def change
    create_table :laboratories_softwares do |t|
      t.references :laboratory
      t.references :software

      t.timestamps
    end
    add_index :laboratories_softwares, :laboratory_id
    add_index :laboratories_softwares, :software_id
  end
end

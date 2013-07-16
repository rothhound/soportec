class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :description
      t.references :laboratory

      t.timestamps
    end
    add_index :states, :laboratory_id
  end
end

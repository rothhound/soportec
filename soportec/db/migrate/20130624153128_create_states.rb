class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :description

      t.integer :laboratory_id

      t.timestamps
    end
  end
end

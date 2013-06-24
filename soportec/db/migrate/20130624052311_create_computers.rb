class CreateComputers < ActiveRecord::Migration
  def change
    create_table :computers do |t|
      t.string :ram
      t.string :processor
      t.string :motherboard
      t.string :display
      t.string :mouse
      t.string :keyboard
      t.string :videocard

      t.integer :laboratory_id
      t.timestamps
    end
  end
end

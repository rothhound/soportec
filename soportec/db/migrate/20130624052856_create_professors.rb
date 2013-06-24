class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :code
      t.string :name
      t.string :lastname

      t.timestamps
    end
  end
end

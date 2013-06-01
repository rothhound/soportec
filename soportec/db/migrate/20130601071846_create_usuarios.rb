class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.integer :codigo
      t.string :email
      t.string :password
      t.string :nombre
      t.string :apellidos
      t.integer :role_id

      t.timestamps
    end
  end
end

class CreateSoftwares < ActiveRecord::Migration
  def change
    create_table :softwares do |t|
      t.string :name
      t.string :version

      t.integer :category_id

      t.timestamps
    end
  end
end

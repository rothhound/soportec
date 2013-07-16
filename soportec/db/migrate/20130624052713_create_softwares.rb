class CreateSoftwares < ActiveRecord::Migration
  def change
    create_table :softwares do |t|
      t.string :name
      t.string :version
      t.references :category

      t.timestamps
    end
    add_index :softwares, :category_id
  end
end

class CreateEaps < ActiveRecord::Migration
  def change
    create_table :eaps do |t|
      t.string :name

      t.timestamps
    end
  end
end

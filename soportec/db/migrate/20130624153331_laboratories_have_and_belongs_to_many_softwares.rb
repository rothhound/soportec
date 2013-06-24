class LaboratoriesHaveAndBelongsToManySoftwares < ActiveRecord::Migration
  def self.up
    create_table :laboratories_softwares, :id => false do |t|
      t.references :laboratory, :software
    end
  end

  def self.down
    drop_table :laboratories_softwares
  end
end

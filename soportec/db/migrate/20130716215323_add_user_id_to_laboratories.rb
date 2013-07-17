class AddUserIdToLaboratories < ActiveRecord::Migration
  def change
    add_column :laboratories, :user_id, :integer
  end
end

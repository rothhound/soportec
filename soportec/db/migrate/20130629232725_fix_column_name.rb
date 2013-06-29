class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :schedules, :star, :start
  end
end

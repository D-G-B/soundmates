class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :shares, :type, :platform
  end
end

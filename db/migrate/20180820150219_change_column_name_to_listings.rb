class ChangeColumnNameToListings < ActiveRecord::Migration[5.2]
  def change
    rename_column :listings, :type, :transportation_type
  end
end

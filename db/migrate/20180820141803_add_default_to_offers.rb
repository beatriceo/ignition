class AddDefaultToOffers < ActiveRecord::Migration[5.2]
  def change
    change_column :offers, :confirm, :boolean, default: false
  end
end

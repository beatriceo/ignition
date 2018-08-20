class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.references :listing, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :confirm

      t.timestamps
    end
  end
end

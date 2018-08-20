class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.string :type
      t.string :cost
      t.string :location
      t.date :date_start
      t.date :date_end
      t.integer :rating
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

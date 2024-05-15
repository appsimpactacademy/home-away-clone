class CreateAccommodations < ActiveRecord::Migration[7.1]
  def change
    create_table :accommodations do |t|
      t.string :name
      t.text :description
      t.references :accomodation_type, null: false, foreign_key: true
      t.decimal :price_per_night
      t.boolean :available

      t.timestamps
    end
  end
end

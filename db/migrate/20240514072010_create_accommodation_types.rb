class CreateAccommodationTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :accommodation_types do |t|
      t.string :type_name

      t.timestamps
    end
  end
end

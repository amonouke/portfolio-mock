class CreateOwnerinfos < ActiveRecord::Migration[6.1]
  def change
    create_table :ownerinfos do |t|
      t.text :top_image
      t.string :street_address
      t.string :nearest_station
      t.string :phone_number
      t.string :opening_hours
      t.string :closing_time
      t.string :regular_holiday
      t.string :thing_about_business_hours
      t.string :homepage
      t.text :store_image

      t.timestamps
    end
  end
end

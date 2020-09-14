class CreateBreweries < ActiveRecord::Migration[6.0]
  def change
    create_table :breweries do |t|
      t.string :name
      t.string :type
      t.string :street
      t.string :city
      t.string :longitude
      t.string :latitude
      t.string :phone
      t.string :url
    

      t.timestamps
    end
  end
end

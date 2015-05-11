class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :property_name
      t.string :street1
      t.string :street2
      t.string :suburb
      t.string :postcode
      t.string :state
      t.string :country

      t.timestamps null: false
    end
  end
end

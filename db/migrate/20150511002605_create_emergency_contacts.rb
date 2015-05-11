class CreateEmergencyContacts < ActiveRecord::Migration
  def change
    create_table :emergency_contacts do |t|
      t.string :contact_name
      t.string :relationship
      t.string :home_phone
      t.string :mobile

      t.timestamps null: false
    end
  end
end

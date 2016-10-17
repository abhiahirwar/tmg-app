class AddressSetNull < ActiveRecord::Migration
  def change
    change_column_null :addresses, :street1, false
    change_column_null :addresses, :suburb, false
    change_column_null :addresses, :postcode, false
    change_column_null :addresses, :state, false
    change_column_null :addresses, :country, false
  end
end

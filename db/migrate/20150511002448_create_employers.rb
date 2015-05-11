class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :trading_name
      t.string :contact_name
      t.string :supervisor_name
      t.string :training_address
      t.string :phone
      t.string :fax
      t.string :email
      t.string :abn

      t.timestamps null: false
    end
  end
end

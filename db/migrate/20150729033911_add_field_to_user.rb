class AddFieldToUser < ActiveRecord::Migration
  def change
    add_column :users, :return_to_url, :string
  end
end

class AddFieldToCourse < ActiveRecord::Migration
  def up
    add_column :courses, :web_link, :string
  end

  def down
    remove_column :courses, :web_link
  end
end

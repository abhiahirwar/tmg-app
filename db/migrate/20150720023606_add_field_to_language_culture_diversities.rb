class AddFieldToLanguageCultureDiversities < ActiveRecord::Migration
  def up
    add_column :language_culture_diversities, :aboriginal, :string
  end

  def down
    remove_column :language_culture_diversities, :aboriginal
  end
end

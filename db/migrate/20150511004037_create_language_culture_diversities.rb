class CreateLanguageCultureDiversities < ActiveRecord::Migration
  def change
    create_table :language_culture_diversities do |t|
      t.string :birth_country
      t.string :home_language
      t.string :english_level

      t.timestamps null: false
    end
  end
end

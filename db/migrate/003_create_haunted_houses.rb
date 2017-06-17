# Create your haunted_houses migration here
class CreateHauntedHouses < ActiveRecord::Migration
  def change
    create_table :haunted_houses do |t|
      t.string :name
      t.string :location
      t.string :theme
      t.float :price
      t.boolean :family_friendly
      t.datetime :opening_date
      t.datetime :closing_date
      t.string :description
      t.timestamps
    end
  end
end

# id INTEGER PRIMARY KEY,
# name TEXT,
# location TEXT,
# theme TEXT,
# price REAL,
# family_friendly BOOLEAN,
# opening_date INTEGER,
# closing_date INTEGER,
# description TEXT

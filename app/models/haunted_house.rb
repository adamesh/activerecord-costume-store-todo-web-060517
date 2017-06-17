# Create your HauntedHouse class here

# name
# location
# theme
# price
# whether they're family friendly or not
# opening date
# closing date
# long description

class HauntedHouse < ActiveRecord::Base
  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS haunted_houses (
        id INTEGER PRIMARY KEY,
        name TEXT,
        location TEXT,
        theme TEXT,
        price REAL,
        family_friendly BOOLEAN,
        opening_date INTEGER,
        closing_date INTEGER,
        description TEXT
      )
    SQL

    DB.execute(sql)
  end
end

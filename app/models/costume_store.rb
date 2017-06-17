# Create your CostumeStore class here

# name
# location
# number of costumes, or "costume inventory"
# number of employees
# whether or not it's still in business
# opening time
# closing time

class CostumeStore < ActiveRecord::Base
  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS costume_stores (
        id INTEGER PRIMARY KEY,
        name TEXT,
        location TEXT,
        costume_inventory INTEGER,
        num_of_employees INTEGER,
        still_in_business BOOLEAN,
        opening_time INTEGER,
        closing_time INTEGER
      )
    SQL

    DB.execute(sql)
  end
end

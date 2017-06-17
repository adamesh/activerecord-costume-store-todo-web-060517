# Create your Costume class here
# It should inherit from ActiveRecord::Base
class Costume < ActiveRecord::Base
  def self.create_table
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS costumes (
        id INTEGER PRIMARY KEY,
        name TEXT,
        price REAL,
        size TEXT,
        image_url TEXT
      )
    SQL

    DB.execute(sql)
  end
end

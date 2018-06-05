class Pokemon
  attr_accessor :name, :type, :database
  
  def initialize(name, type, db)
    @name = name
    @type = type
    @db = db
  end
  
  def save(name, type)
    @database.execute("INSERT INTO ?(name, type) VALUES(?,?);", @name, @type, @database)
  end
  
  def find(pk_id)
    database_execution.execute("SELECT * FROM ? WHERE id = ?;", @database, pk_id)
  end
end

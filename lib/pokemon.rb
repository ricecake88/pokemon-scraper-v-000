class Pokemon
  attr_accessor :name, :type, :database
  
  def initialize(name, type, database)
    @name = name
    @type = type
    @database = database
  end
  
  def save
    database_execution.execute("INSERT INTO ?(name, type) VALUES(?,?);", @name, @type, @database)
  end
  
  def find(pk_id)
    database_execution.execute("SELECT * FROM ? WHERE id = ?;", @database, pk_id)
  end
end

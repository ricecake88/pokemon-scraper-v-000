class Pokemon
  @attr_accessor :name, :type, :database
  
  def initialize(name, type, database)
    @name = name
    @type = type
    @database = database
  end
  
  def save
    @database.execute("INSERT INTO ?(name, type) VALUES(?,?)", @name, @type, @database)
  end
  
  def find(pk_id)
    @database.execute("SELECT * FROM ? WHERE")
  end
end

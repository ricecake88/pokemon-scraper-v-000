class Pokemon
  @attr_accessor :name, :type, :database
  
  def initialize(name, type, database)
    @name = name
    @type = type
    @database = database
  end
  
  def save
    db.execute("INSERT INTO ?(name, type) VALUES(?,?)", @name, @type, @database)
  end
  
  def find(name)
  end
end

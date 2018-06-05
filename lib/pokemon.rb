class Pokemon
  attr_accessor :name, :type, :database
  
  def initialize(name, type, db)
    @name = name
    @type = type
    @db = db
  end
  
  def self.save(name, type, db)
    @db.execute("INSERT INTO ?(name, type) VALUES(?,?);", @name, @type, @db)
  end
  
  def self.find(pk_id)
    database_execution.execute("SELECT * FROM ? WHERE id = ?;", @db, pk_id)
  end
end

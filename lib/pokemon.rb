class Pokemon
  attr_accessor :name, :type, :database
  
  def initialize(name, type, db)
    @name = name
    @type = type
    @db = db
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon(name, type) VALUES(?,?);", name, type)
  end
  
  def self.find(pk_id)
    pogo = database_execution.execute("SELECT * FROM ? WHERE id = ?;", @db, pk_id)
    pogo
  end
end

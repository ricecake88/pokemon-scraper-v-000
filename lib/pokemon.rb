class Pokemon
  def initialize(name, type, database)
    @name = name
    @type = type
    @database = database
  end
  
  def save(pk_name, pk_type, db)
    db.execute("INSERT INTO pokemon(name, type) VALUES(?,?)", pk_name, pk_type)
  end
end

class Pokemon
  attr_accessor :name, :type, :db, :id

  def initialize(id: id, name: name, type: type, db: db)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon(name, type) VALUES(?,?)", name, type)
  end
  
  def self.find(pk_id, db)
    pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?", pk_id)
      Pokemon.instance_variable_set(:@id, pokemon[0][0])
      Pokemon.instance_variable_set(:@name, pokemon[0][1])
      Pokemon.instance_variable_set(:@type, pokemon[0][2])
  end
end

class Pokemon
  attr_accessor :name, :type, :db, :id

  def initialize(id: nil, name: nil, type: nil, db: nil)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon(name, type) VALUES(?,?)", name, type)
  end
  
  def self.find(pk_id, db)
    pogo = db.execute("SELECT * FROM pokemon WHERE id = ?", pk_id)

  end
end

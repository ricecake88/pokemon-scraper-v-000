class Pokemon

  def initialize(attributes)
    attributes.each {|key,value| self.send((#{key}="), value)}
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon(name, type) VALUES(?,?)", name, type)
  end
  
  def self.find(pk_id, db)
    db.execute("SELECT * FROM pokemon WHERE id = ?", pk_id) do |row|
      Pokemon.new(row[1], row[2], db)
    end
  end
end

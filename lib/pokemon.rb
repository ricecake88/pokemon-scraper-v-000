class Pokemon

'''
def initialize(name: name, type: type, db: db)
  local_variables.each do |k|
    v = eval(k.to_s)
    instance_variable_set("@#{k}", v) unless v.nil?
  end
end
'''

  def initialize(name: nil, type: nil, db: nil)
    @name = name
    @type = type
    @db = db
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

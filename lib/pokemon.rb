class Pokemon
  attr_accessor :name, :type, :db, :id

  '''def initialize(id: id, name: name, type: type, db: db)
    @id = id
    @name = name
    @type = type
    @db = db
  end'''
def initialize(**options)
  attributes.each do |k,v|
    instance_variable_set("@#{k}", v) unless v.nil?
  end
end
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon(name, type) VALUES(?,?)", name, type)
  end
  
  def self.find(pk_id, db)
    db.execute("SELECT * FROM pokemon WHERE id = ?", pk_id) do |row|
      binding.pry
      Pokemon.new(row)
    end
  end
end

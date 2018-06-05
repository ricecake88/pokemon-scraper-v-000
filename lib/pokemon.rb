class Pokemon
  def save(pk_name, pk_type, db)
    db.execute("INSERT INTO pokemon(name, type) VALUES")
  end
end

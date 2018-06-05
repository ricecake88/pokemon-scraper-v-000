class Pokemon
  def save(pk_name, pk_type, db)
    db.execute("INSERT INTO pokemon VALUES(name, type)")
  end
end

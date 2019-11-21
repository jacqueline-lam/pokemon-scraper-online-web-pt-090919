class Pokemon
  attr_accessor :name, :type, :db
  attr_reader :id
  
  # Pokemon initialized w/ keyword arguments of id, name, type & db
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db  
  end
  
  # Save an instance of a pokemon with the correct id
  def self.save(name, type, db)
    # @db = db
    sql = <<-SQL
      INSERT INTO pokemon (name, type)
      VALUES (?,?)
    SQL
    
    # db.execute("touch db/pokemon.db")
    # db.execute(sql, name, type)
    # @id = db.execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
    
    db.execute(sql, name, type)
  end
  
  def self.find
    
  end
end

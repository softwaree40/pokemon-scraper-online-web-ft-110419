class Pokemon
     attr_accessor:name,:type,:db
     attr_reader:id
    def initialize(hash={})
      #binding.pry
      @id = id
      @name = name 
      @type = type
      @db = db
      
    end
    def save
      DB[:conn].execute(<<-SQL INSERT INTO pokemon (name,type,db) VALUES ("?","?","?")self.name,self.type,self.db)
      @id = DB[:conn].execute("SELECT last_insert_rowid() FROM Pokemon")[0][0]
     end
end

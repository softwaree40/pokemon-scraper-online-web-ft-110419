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
       sql =<<-SQL INSERT INTO Pokemon 
          (name,type,db) VALUES (?,?,?)
           SQL
        DB[:conn].execute(sql)
    end
  
end

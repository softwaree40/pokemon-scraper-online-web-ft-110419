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
    def self.save(name,type,db)
       sql = <<-SQL 
       INSERT INTO pokemon 
       (name,type) VALUES (?,?) 
       SQL
       db.execute(sql,name,type)
       
    end
      def self.find(id,db) 
        # binding.pry
        sql = <<-SQL 
       SELECT * FROM pokemon
       WHERE id = ?
       SQL
        db.execute(sql,id)
          
      end
      
end

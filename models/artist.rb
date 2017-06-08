require_relative '../db/sql_runner'

class Artist
attr_accessor :id, :name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']

  end

    def save()
      sql = "INSERT INTO artist
              (name)
              VALUES ('#{@name}') 
              RETURNING * ;"
              result = SqlRunner.run(sql)
              @id = result[0]['id'].to_i
    end

    def self.all()
      sql = "SELECT * FROM artist"
      results = SqlRunner.run( sql )
      return results.map { |artist| Artist.new( artist ) }
    end

    def self.find( id )
      sql = "SELECT * FROM album WHERE id=#{id}"
      results = SqlRunner.run( sql )
      return Artist.new( results.first )
    end

    def self.delete_all
      sql = "DELETE FROM artist"
      SqlRunner.run( sql )
    end

end
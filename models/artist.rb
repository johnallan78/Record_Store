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

end
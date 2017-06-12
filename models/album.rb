require_relative '../db/sql_runner'

class Album

  attr_accessor :id, :title, :artist, :genre, :quantity
  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @artist = options['artist']
    @genre = options['genre']
    @quantity = options['quantity'].to_i
  end

  def save()
    sql = "INSERT INTO album
            (artist, title, genre, quantity)
            VALUES ('#{@artist}', '#{@title}', '#{@genre}', #{@quantity}) 
            RETURNING * ;"
            result = SqlRunner.run(sql)
            @id = result[0]['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM album"
    results = SqlRunner.run( sql )
    return results.map { |album| Album.new( album ) }
  end

  def update()
      sql = " UPDATE album SET (id, title, artist, genre, quantity) = ('#{@id}', '#{@title}', '#{@artist}', '#{@genre}', #{@quantity} WHERE id = #{@id};"
      SqlRunner.run(sql)
  end

  def delete ()
      sql = "DELETE FROM album WHERE id = '#{@id}';"
      SqlRunner.run(sql)
  end


  def self.find( id )
    sql = "SELECT * FROM album WHERE id=#{id}"
    results = SqlRunner.run( sql )
    return Album.new( results.first )
  end

  def self.delete_all
    sql = "DELETE FROM album"
    SqlRunner.run( sql )
  end






end


require_relative '../db/sql_runner'

class Album

  attr_accessor :id, :title, :artist, :genre, :quantity, :buy, :sell, :url
  def initialize(options)
    @id = options['id'].to_i if options['id']
    @title = options['title']
    @artist = options['artist']
    @genre = options['genre']
    @quantity = options['quantity'].to_i
    @buy = options['buy'].to_f
    @sell = options['sell'].to_f
    @url = options['url']
  end

  def save()
    sql = "INSERT INTO album
            (artist, title, genre, quantity, buy, sell, url)
            VALUES ('#{@artist}', '#{@title}', '#{@genre}', #{@quantity}, #{@buy}, #{@sell}, '#{@url}') 
            RETURNING * ;"
            result = SqlRunner.run(sql)
            @id = result[0]['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM album"
    results = SqlRunner.run( sql )
    return results.map { |album| Album.new( album ) }
  end

  def artist()
    sql = "SELECT * FROM artist WHERE id = #{@artist}"
    results = SqlRunner.run(sql)
    return Artist.new(results[0])
    
  end

  def update()
      sql = " UPDATE album SET (id, title, artist, genre, quantity, buy, sell, url) = ('#{@id}', '#{@title}', '#{@artist}', '#{@genre}', #{@quantity}, #{@buy}, #{@sell}, '#{@url}' WHERE id = #{@id};"
      SqlRunner.run(sql)
  end

  def delete ()
      sql = "DELETE FROM album WHERE id = '#{@id}';"
      SqlRunner.run(sql)
  end

  def self.delete_all
    sql = "DELETE FROM album"
    SqlRunner.run( sql )
  end

  def markup()
    markup = @sell - @buy 
    return '%.2f'% markup.to_f()

  end
end


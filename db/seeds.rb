require_relative '../models/album'
require_relative '../models/artist'
require 'pry-byebug'


Album.delete_all()
Artist.delete_all()


@artist1 = Artist.new({'name' => 'The Beatles' })
@artist1.save()
@artist2 = Artist.new({'name' => 'Pink Floyd' })
@artist2.save()
@artist3 = Artist.new({'name' => 'Radiohead' })
@artist3.save()



album1 = Album.new({'title' => 'Revolver','artist' => @artist1.id,'genre' => ' Rock','quantity' => 5, 'buy' => 7.57, 'sell' => 9.99, 'url' => 'http://www.thebeatles.com/sites/default/files/styles/tile_1_column_x2/public/tile/image/Revolver_3.jpg?itok=reySQMFx' })
album1.save()
album2 = Album.new({'title' => 'Dark Side of the Moon','artist' => @artist2.id,'genre' => ' Rock','quantity' => 10, 'buy' => 9.38, 'sell' => 12.99, 'url' => 'http://4.bp.blogspot.com/_5A6fSMDiXaI/TTvDXxO4diI/AAAAAAAAA6Q/_E09tLPYO6U/s1600/Hipgnosis_-_Pink_Floyd_-_Dark_Side_of_the_Moon.jpg' })
album2.save()
album3 = Album.new({'title' => 'OK Computer','artist' => @artist3.id,'genre' => ' Rock','quantity' => 2, 'buy' => 7.57, 'sell' => 9.99 , 'url' => 'http://4.bp.blogspot.com/_NGeOXNeQU3k/TQp4nktOTgI/AAAAAAAAAFU/bjFnG2FgUq0/s1600/Radiohead+-+OK+Computer.jpg' })
album3.save()



binding.pry
nil



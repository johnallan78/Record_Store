require_relative '../models/album'
require_relative '../models/artist'
# require_relative '../models/store'
require 'pry-byebug'


Album.delete_all()
Artist.delete_all()
# Store.delete_all()

@artist1 = Artist.new({'name' => 'The Beatles' })
@artist1.save()
@artist2 = Artist.new({'name' => 'Led Zeppelin' })
@artist2.save()
@artist3 = Artist.new({'name' => 'Miles Davis' })
@artist3.save()
@artist4 = Artist.new({'name' => 'Johnny Cash' })
@artist4.save()
@artist5 = Artist.new({'name' => 'Rage Against The Machine' })
@artist5.save()
@artist6 = Artist.new({'name' => 'Tower Of Power' })
@artist6.save()
@artist7 = Artist.new({'name' => 'Radiohead' })
@artist7.save()
@artist8 = Artist.new({'name' => 'Metallica' })
@artist8.save()
@artist9 = Artist.new({'name' => 'Jimi Hendrix' })
@artist9.save()
@artist10 = Artist.new({'name' => 'Rush' })
@artist10.save()
@artist11 = Artist.new({'name' => 'Pink Floyd' })
@artist11.save()
@artist12 = Artist.new({'name' => 'Punch Brothers' })
@artist12.save()
@artist13 = Artist.new({'name' => 'James Brown' })
@artist13.save()
@artist14 = Artist.new({'name' => 'Frank Zappa' })
@artist14.save()
@artist15 = Artist.new({'name' => 'Queens Of The Stone Age' })
@artist15.save()
@artist16 = Artist.new({'name' => 'Paul Simon' })
@artist16.save()
@artist17 = Artist.new({'name' => 'Charles Mingus' })
@artist17.save()
@artist18 = Artist.new({'name' => 'Jamiroquai' })
@artist18.save()
@artist19 = Artist.new({'name' => 'Lunasa' })
@artist19.save()
@artist20 = Artist.new({'name' => 'Keith Jarrett' })
@artist20.save()
@artist21 = Artist.new({'name' => 'The White Stripes' })
@artist21.save()





album1 = Album.new({'title' => 'Revolver','artist' => @artist1.id,'genre' => '60s Rock','quantity' => 5, 'buy' => 7.57, 'sell' => 9.99 })
album1.save()
album2 = Album.new({'title' => 'Sgt.Peppers Lonely Hearts Club Band','artist' => @artist1.id,'genre' => '60s Rock','quantity' => 10, 'buy' => 9.38, 'sell' => 12.99 })
album2.save()
album3 = Album.new({'title' => 'Rubber Soul','artist' => @artist1.id,'genre' => '60s Rock','quantity' => 2, 'buy' => 7.57, 'sell' => 9.99 })
album3.save()
album4 = Album.new({'title' => 'Return of the Space Cowboy','artist' => @artist18.id,'genre' => 'Funk','quantity' => 3, 'buy' => 9.99, 'sell' => 12.99})
album4.save()
album5 = Album.new({'title' => 'Retrospective I', 'artist' => @artist10.id,'genre' => 'Prog Rock','quantity' => 1, 'buy' => 5.67, 'sell' => 7.99})
album5.save()
album6 = Album.new({'title' => 'Ahoy!','artist' => @artist12.id,'genre' => 'Bluegrass','quantity' => 2, 'buy' => 3.47, 'sell' => 4.99})
album6.save()
album7 = Album.new({'title' => 'This Is Jazz','artist' => @artist17.id,'genre' => 'Jazz','quantity' => 2, 'buy' => 3.49, 'sell' => 6.49})
album7.save()
album8 = Album.new({'title' => 'Mingus x 5','artist' => @artist17.id,'genre' => 'Jazz','quantity' => 1, 'buy' => 3.96, 'sell' =>8.99 })
album8.save()




binding.pry
nil



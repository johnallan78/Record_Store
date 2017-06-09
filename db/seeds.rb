require_relative '../models/album'
require_relative '../models/artist'
require_relative '../models/store'
require 'pry-byebug'

Artist.delete_all()
Album.delete_all()
# Store.delete_all()

artist1 = Artist.new({'name' => 'The Beatles' })
artist1.save()
artist2 = Artist.new({'name' => 'Led Zeppelin' })
artist2.save()
artist3 = Artist.new({'name' => 'Miles Davis' })
artist3.save()
artist4 = Artist.new({'name' => 'Johnny Cash' })
artist4.save()
artist5 = Artist.new({'name' => 'Rage Against The Machine' })
artist5.save()
artist6 = Artist.new({'name' => 'Tower Of Power' })
artist6.save()
artist7 = Artist.new({'name' => 'Radiohead' })
artist7.save()
artist8 = Artist.new({'name' => 'Metallica' })
artist8.save()
artist9 = Artist.new({'name' => 'Jimi Hendrix' })
artist9.save()
artist10 = Artist.new({'name' => 'Rush' })
artist10.save()
artist11 = Artist.new({'name' => 'Pink Floyd' })
artist11.save()
artist12 = Artist.new({'name' => 'Punch Brothers' })
artist12.save()
artist13 = Artist.new({'name' => 'James Brown' })
artist13.save()
artist14 = Artist.new({'name' => 'Frank Zappa' })
artist14.save()
artist15 = Artist.new({'name' => 'Queens Of The Stone Age' })
artist15.save()
artist16 = Artist.new({'name' => 'Paul Simon' })
artist16.save()
artist17 = Artist.new({'name' => 'Charles Mingus' })
artist17.save()
artist18 = Artist.new({'name' => 'Jamiroquai' })
artist18.save()
artist19 = Artist.new({'name' => 'Lunasa' })
artist19.save()





album1 = Album.new({'title' => 'Revolver','artist' => artist1.name,'genre' => '60s Rock','quantity' => 5 })
album1.save()
album2 = Album.new({'title' => 'Sgt.Peppers Lonely Hearts Club Band','artist' => artist1.name,'genre' => '60s Rock','quantity' => 10 })
album2.save()
album3 = Album.new({'title' => 'Rubber Soul','artist' => artist1.name,'genre' => '60s Rock','quantity' => 2})
album3.save()
album4 = Album.new({'title' => 'Return of the Space Cowboy','artist' => artist17.name,'genre' => 'Funk','quantity' => 3})
album4.save()
album5 = Album.new({'title' => 'Retrospective I', 'artist' => artist10.name,'genre' => 'Prog Rock','quantity' => 1})
album5.save()
album6 = Album.new({'title' => 'Ahoy!','artist' => artist12.name,'genre' => 'Bluegrass','quantity' => 2})
album6.save()
album7 = Album.new({'title' => 'This Is Jazz','artist' => artist17.name,'genre' => 'Jazz','quantity' => 2})
album7.save()
album8 = Album.new({'title' => 'Mingus x 5','artist' => artist17.name,'genre' => 'Jazz','quantity' => 1})
album8.save()
album9 = Album.new({'title' => 'Songs For The Deaf','artist' => artist15.name,'genre' => 'Heavy Rock','quantity' => 2})
album9.save()
album10 = Album.new({'title' => 'The Kinnity Sessions','artist' => artist18.name,'genre' => 'Folk','quantity' => 3})
album10.save()
album11 = Album.new({'title' => 'Tinseltown Rebellion','artist' => artist14.name,'genre' => '60s Rock','quantity' => 3})
album11.save()
album12 = Album.new({'title' => 'The Rhythm of the Saints','artist' => artist16.name,'genre' => 'Pop','quantity' => 5})
album12.save()
album13 = Album.new({'title' => 'Sex Machine','artist' => artist13.name,'genre' => 'R&B','quantity' => 2})
album13.save()
album14 = Album.new({'title' => 'Whos Feeling Young Now?','artist' => artist12.name,'genre' => 'Bluegrass','quantity' => 3})
album14.save()
album15 = Album.new({'title' => 'Echoes','artist' => artist11.name,'genre' => 'Rock','quantity' => 3})
album15.save()



binding.pry
nil



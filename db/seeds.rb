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



album1 = Album.new({'title' => 'Revolver','artist' => artist1.name,'genre' => '60s Rock','quantity' => 5 })
album1.save()
album2 = Album.new({'title' => 'Sgt.Peppers Lonely Hearts Club Band','artist' => artist1.name,'genre' => '60s Rock','quantity' => 10 })
album2.save()
album3 = Album.new({'title' => 'Rubber Soul','artist' => artist1.name,'genre' => '60s Rock','quantity' => 2})
album3.save()



binding.pry
nil



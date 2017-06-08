require_relative '../models/album'
require_relative '../models/artist'
require_relative '../models/store'
require 'pry-byebug'


artist1 = Artist.new({
  'name' => 'The Beatles'
  })

artist1.save()


album1 = Album.new({
  'title' => 'Revolver',
  'artist' => artist1.name,
  'genre' => '60s Rock',
  'quantity' => 5 

  })

album1.save()

binding.pry
nil



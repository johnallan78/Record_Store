require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/album' )


get '/album/index' do
  @album = Album.all()
  erb(:"album/index")
end


get '/album/new' do
  @artist = Album.all()
   erb(:"artist/new")
end

post '/artists' do
  @artist = Album.new(params)
  @artist.save()
  erb(:"artist/create")
end

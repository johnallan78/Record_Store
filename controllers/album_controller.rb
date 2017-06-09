require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/album' )


get '/album/index' do
  @album = Album.all()
  erb(:"album/index")
end


get '/album/new' do
  @artist = Album.all()
   erb(:"album/new")
end

post '/albums' do
  @artist = Album.new(params)
  @artist.save()
  erb(:"album/create")
end

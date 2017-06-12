require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/album' )


get '/album/index' do
  @album = Album.all()
  erb(:"album/index")
end


get '/album/new' do
  @album = Album.all()
   erb(:"album/new")
end

post '/albums' do
  @album = Album.new(params)
  @album.save()
  erb(:"album/create")
end

get '/albums/show' do 
  @albums = Album.all()
  erb(:"album/show")
end



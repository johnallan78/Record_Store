require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/album' )


get '/album/index' do
  @album = Album.new()
  erb(:"album/index")
end
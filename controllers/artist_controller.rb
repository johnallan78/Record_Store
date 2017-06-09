require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/artist' )


get '/artist/index' do
  @artist = Artist.all()
  erb(:"artist/index")
end
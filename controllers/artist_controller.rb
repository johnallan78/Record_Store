require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/artist' )


get '/artist/index' do
  @artist = Artist.all()
  erb(:"artist/index")
end

get '/artist/new' do
  @artist = Artist.all()
   erb(:"artist/new")
end

post '/artists' do
  @artist = Artist.new(params)
  @artist.save()
  erb(:"artist/create")
end

get '/artist/show' do
  @artist = Artist.all()
  erb(:"artist/show")
end


get '/login' do
  erb :'/login'
end

post '/user/:id' do
  @user = User.find(params[:id])
  @decks = Deck.all
  redirect :'decks/index'
end

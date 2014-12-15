get '/login' do
  erb :'/login'
end

post '/user/:id' do
  @user = User.authenticate(params[:username], params[:password])
  if @user
    session[:user_id] = @user.id
    @decks = Deck.all
    redirect :'decks/index'
  else
    @errors = "Username and Password didn't match"
    erb:'login'
  end
end

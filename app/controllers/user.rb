get '/user/:id' do
  @user ||= User.find_by(email: params[:email])
  # @decks = Deck.where(creator_id: @user.id) -- use if only show decks they created
  @decks = Deck.all
  session[:user] = @user
  erb :'user/index'
end

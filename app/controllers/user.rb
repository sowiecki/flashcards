get '/user/:id' do
  @user = User.find_by(email: params[:email])
  @decks = Deck.where(creator_id: @user.id)
  session[:user] = @user
  erb :'user/show'
end

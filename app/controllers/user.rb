get '/user/:id' do
  @user = User.find_by(email: params[:email])
<<<<<<< HEAD
  # @decks = Deck.where(creator_id: @user.id) -- use if only show decks they created
  @decks = Deck.all
  session[:user] = @user
  erb :'user/index'
=======
  @decks = Deck.where(creator_id: @user.id)
  session[:user] = @user
  erb :'user/show'
>>>>>>> d3e3725abdf66d5e471638dbb2ee720b1e5ef27d
end

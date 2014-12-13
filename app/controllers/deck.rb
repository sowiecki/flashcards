get '/deck/:id' do
  @deck = Deck.find(params[:id])

  @cards = Card.where(deck_id: params[:id]).shuffle
  session[:cards] = @cards
  @card = session[:cards].pop
  erb :'deck/show'
end

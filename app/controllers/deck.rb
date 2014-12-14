get '/deck/:id' do
  @deck = Deck.find(params[:id])
  @cards = Card.where(deck_id: params[:id])
  @card_ids = []
  @cards.each do |card|
    @card_ids << card.id
  end
  session[:card_ids] = @card_ids
  # @card = Card.where(id: session[:card_ids])
  card_id = session[:card_ids].first
  @card = Card.where(id: card_id)
  erb :'deck/show'
end

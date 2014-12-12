

get '/deck/:deck_id/card/:card_id' do
  @deck = Deck.find(params[:deck_id])
  @all_cards = Card.where(deck_id: params[:deck_id])
  @card = @all_cards.find(params[:card_id])
  erb :'deck/card'
end

post '/deck/:deck_id/card/:card_id/result' do

end

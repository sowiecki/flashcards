get '/deck/:deck_id/card/:card_id' do
  @deck = Deck.find(params[:deck_id])
  @round = Round.create!(user_id: session[:user].id ,deck_id: params[:deck_id])
  session[:round] = @round
  @card = Card.find_by(id: params[:card_id], deck_id: params[:deck_id])
  # @next_card = session[:cards].pop
  erb :'card/show'
end

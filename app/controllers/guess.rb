post '/deck/:deck_id/card/:card_id/guess' do
  @card = Card.find(params[:card_id])
  status = @card.check_guess(params[:guess])
  @guess = Guess.create!(round_id: 1, card_id: @card.id, guesser_id: session[:user].id, guess: params[:guess], status: status)
  redirect "/deck/#{params[:deck_id]}/card/#{@card.id}/guess/#{@guess.id}"
end

get '/deck/:deck_id/card/:card_id/guess/:guess_id' do
  @deck = Deck.find(params[:deck_id])
  @card = Card.find(params[:card_id])
  @guess = Guess.find(params[:guess_id])
  erb :'guess/show'
end


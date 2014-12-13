class Card < ActiveRecord::Base
  belongs_to :deck
  has_many :guesses

  def check_guess(guess)
    self.answer.downcase == guess.downcase
  end
end

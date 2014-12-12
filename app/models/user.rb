class User < ActiveRecord::Base
  has_many :guesses
  has_many :decks
  has_many :rounds
  has_many :cards, through: :decks
end

require 'faker'
require 'bcrypt'

3.times do
  User.create!(name: Faker::Name.name, email: Faker::Internet.email, password: BCrypt::Password.create(Faker::Internet.password))
end

Deck.create!(title: "Bluegills", description: "Learn the last names of the DBC Bluegills.", solved: false, creator_id: 1)
Deck.create!(title: "Fast Food", description: "Name the single word missing from the restaurant name... I'm hungry now.", solved: false, creator_id: 2)

Card.create!(question: "Sean", answer: "Owiecki", deck_id: 1)
Card.create!(question: "Adriana", answer: "Castaneda", deck_id: 1)
Card.create!(question: "Bane", answer: "Srdjevic", deck_id: 1)
Card.create!(question: "Chris", answer: "Hirsh", deck_id: 1)
Card.create!(question: "DJ", answer: "DeWitt", deck_id: 1)
Card.create!(question: "Jamie", answer: "Pilgrim", deck_id: 1)
Card.create!(question: "Luke", answer: "Zdanowicz", deck_id: 1)
Card.create!(question: "Steven", answer: "An", deck_id: 1)
Card.create!(question: "Raj", answer: "Singh", deck_id: 1)
Card.create!(question: "Philipp", answer: "Blume", deck_id: 1)
Card.create!(question: "Nodira", answer: "Berdieva", deck_id: 1)
Card.create!(question: "Nirag", answer: "Amin", deck_id: 1)
Card.create!(question: "Matt", answer: "DuBois", deck_id: 1)
Card.create!(question: "Armando", answer: "Bulnes", deck_id: 1)
Card.create!(question: "Vianney", answer: "Willot", deck_id: 1)

Card.create!(question: "Chipotle ___ Grill", answer: "Mexican", deck_id: 2)
Card.create!(question: "___ Caesars", answer: "Little", deck_id: 2)
Card.create!(question: "Five ___ Burgers and Fries", answer: "Guys", deck_id: 2)
Card.create!(question: "Long John ___", answer: "Silver's", deck_id: 2)
Card.create!(question: "IN-N-___ Burger", answer: "OUT", deck_id: 2)
Card.create!(question: "Carl's ___", answer: "Jr.", deck_id: 2)
Card.create!(question: "Steak 'n ___", answer: "Shake", deck_id: 2)
Card.create!(question: "___-fil-A", answer: "Chick", deck_id: 2)
Card.create!(question: "Tim ___", answer: "Hortons", deck_id: 2)
Card.create!(question: "Waffle ___", answer: "House", deck_id: 2)
Card.create!(question: "Jimmy John's Gourmet ___", answer: "Sandwiches", deck_id: 2)
Card.create!(question: "___ Lobster", answer: "Red", deck_id: 2)
Card.create!(question: "Jack in the ___", answer: "Box", deck_id: 2)
Card.create!(question: "___ KingBurger", deck_id: 2)
Card.create!(question: "___ Chicken & Biscuits", answer: "Popeyes", deck_id: 2)
Card.create!(question: "Olive ___", answer: "Garden", deck_id: 2)
Card.create!(question: "Outback ___", answer: "Steakhouse", deck_id: 2)
Card.create!(question: "Nathan's ___", answer: "Famous", deck_id: 2)
Card.create!(question: "___ Bell", answer: "Taco", deck_id: 2)
Card.create!(question: "___ John's Pizza", answer: "Papa", deck_id: 2)


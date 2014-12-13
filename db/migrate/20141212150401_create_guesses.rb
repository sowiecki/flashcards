class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer   :round_id
      t.integer   :card_id
      t.integer   :guesser_id
      t.string   :guess
      t.boolean    :status

      t.timestamps
    end
  end
end

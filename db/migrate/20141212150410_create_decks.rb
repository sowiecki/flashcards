class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.string    :title
      t.string    :description
      t.string    :solved
      t.integer   :creator_id

      t.timestamps
    end
  end
end

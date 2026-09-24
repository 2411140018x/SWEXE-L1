class CreateGameIdeas < ActiveRecord::Migration[8.1]
  def change
    create_table :game_ideas do |t|
      t.string :title, null: false
      t.string :genre, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end

class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.text :image
      t.string :position
      t.integer :points
      t.integer :rebounds
      t.integer :assists
      t.integer :steals
      t.integer :blocks
      t.decimal :fg
      t.decimal :ft
      t.integer :threes
      t.integer :turnovers

      t.timestamps
    end
  end
end

class AddPlayerRefToRosterSpots < ActiveRecord::Migration[5.2]
  def change
    add_reference :roster_spots, :player, foreign_key: true
  end
end

class AddTeamRefToRosterSpots < ActiveRecord::Migration[5.2]
  def change
    add_reference :roster_spots, :team, foreign_key: true
  end
end

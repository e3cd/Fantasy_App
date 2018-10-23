class CreateRosterSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :roster_spots do |t|

      t.timestamps
    end
  end
end

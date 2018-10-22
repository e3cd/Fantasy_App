json.extract! player, :id, :name, :image, :position, :points, :rebounds, :assists, :steals, :blocks, :fg, :ft, :threes, :turnovers, :created_at, :updated_at
json.url player_url(player, format: :json)

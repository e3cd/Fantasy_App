class Team < ApplicationRecord
    validates_presence_of :name, :user_id
    belongs_to :user
    has_many :roster_spots, dependent: :destroy
    has_many :players, through: :roster_spots

    def owner_name
        self.user.name
    end

    def starting_budget
        200 - self.budget_remaining
    end

    def add_player(player_id)
        player = Player.find(player_id)
        if player.price < self.budget_remaining
          RosterSpot.create(player_id: player_id, team_id: self.id)
          self.budget_remaining -= player.price
          self.save
          return "#{player.name} added to #{self.name}"
        else
          return "Sorry, you can't afford that player."
        end
      end
end

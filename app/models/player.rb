class Player < ApplicationRecord
    has_many :teams
    validates_presence_of :name, :position
    has_many :roster_spots, dependent: :destroy
    has_many :teams, through: :roster_spots
    
end

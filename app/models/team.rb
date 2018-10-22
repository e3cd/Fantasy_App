class Team < ApplicationRecord
    validates_presence_of :name, :user_id
    belongs_to :user

    def 
end

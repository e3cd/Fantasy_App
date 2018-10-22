class Team < ApplicationRecord
    validates_presence_of :name, :user_id
    belongs_to :user

    def owner_name
        self.user.name
    end

    def starting_budget
        200 - self.budget_remaining
    end
end

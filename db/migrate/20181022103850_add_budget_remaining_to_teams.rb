class AddBudgetRemainingToTeams < ActiveRecord::Migration[5.2]
  def change
    add_column :teams, :budget_remaining, :integer, default: 200
  end
end

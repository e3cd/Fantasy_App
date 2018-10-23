class AddPriceToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :price, :integer
  end
end

class AddWholesalePriceToBags < ActiveRecord::Migration[5.0]
  def change
    add_column :bags, :wholesale_price, :decimal, precision: 10, scale: 2
  end
end

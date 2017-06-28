class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :bags, :price, :retail_price
  end
end

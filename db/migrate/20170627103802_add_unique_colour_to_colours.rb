class AddUniqueColourToColours < ActiveRecord::Migration[5.0]
  def change
    change_column :colours, :colour, :string, null: false
    add_index :colours, :colour, unique: true
  end
end

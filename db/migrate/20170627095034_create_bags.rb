class CreateBags < ActiveRecord::Migration[5.0]
  def change
    create_table :bags do |t|
      t.references :code, foreign_key: true
      t.references :colour, foreign_key: true
      t.decimal :price, precision: 10, scale: 2
      
      t.timestamps
    end
  end
end

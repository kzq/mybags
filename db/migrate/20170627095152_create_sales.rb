class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.references :bag, foreign_key: true
      t.decimal :price, precision: 10, scale: 2
      t.date :date

      t.timestamps
    end
  end
end

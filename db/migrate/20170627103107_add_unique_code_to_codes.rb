class AddUniqueCodeToCodes < ActiveRecord::Migration[5.0]
  def change
    add_column :codes, :code, :string, null: false
    add_index :codes, :code, unique: true
  end
end

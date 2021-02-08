class AddCurrencyToRequest < ActiveRecord::Migration[5.2]
  def change
    add_reference :requests, :currency, foreign_key: true
    add_reference :requests, :convertible_unit, foreign_key: true
    add_column :requests, :quantity, :integer
    add_column :requests, :price, :float
  end
end

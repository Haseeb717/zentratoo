class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :company_name, :string
    add_column :users, :vat_percentage, :string
    add_column :users, :address, :string
    add_column :users, :country, :string
    add_column :users, :language, :string
    add_column :users, :country_code, :string
    add_column :users, :area_code, :string
    add_column :users, :phone, :string
    add_column :users, :fax, :string
    add_column :users, :summary, :text
    add_column :users, :unit_system, :string
    add_column :users, :payment_way, :string
    add_column :users, :membership_level, :string
  end
end

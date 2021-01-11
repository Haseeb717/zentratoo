class CreateConvertibleUnits < ActiveRecord::Migration[5.2]
  def change
    create_table :convertible_units do |t|
      t.string :en_name
      t.string :de_name

      t.timestamps
    end
  end
end

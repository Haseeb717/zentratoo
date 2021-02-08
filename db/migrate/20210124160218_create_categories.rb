class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.references :area, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end

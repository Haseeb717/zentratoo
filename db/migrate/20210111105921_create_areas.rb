class CreateAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :areas do |t|
      t.string :name
      t.boolean :non_quantitative_area

      t.timestamps
    end
  end
end

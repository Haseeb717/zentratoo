class CreateViews < ActiveRecord::Migration[5.2]
  def change
    create_table :views do |t|
      t.integer :viewable_id
      t.string :viewable_type

      t.timestamps
    end
  end
end

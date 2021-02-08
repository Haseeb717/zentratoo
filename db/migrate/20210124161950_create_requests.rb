class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :request_type
      t.references :category, foreign_key: true
      t.references :area, foreign_key: true
      t.string :name
      t.string :region
      t.text :description
      t.date :manufacture_date
      t.text :document_description

      t.timestamps
    end
  end
end

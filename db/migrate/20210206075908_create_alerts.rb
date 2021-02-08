class CreateAlerts < ActiveRecord::Migration[5.2]
  def change
    create_table :alerts do |t|
      t.references :request, foreign_key: true
      t.string :alert_type
      t.references :area, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

class CreateBlacklistWords < ActiveRecord::Migration[5.2]
  def change
    create_table :blacklist_words do |t|
      t.string :langugage
      t.text :word

      t.timestamps
    end
  end
end

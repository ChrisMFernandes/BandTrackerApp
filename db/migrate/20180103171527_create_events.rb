class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.date :date
      t.boolean :alcohol_served, default: true
      t.integer :band_id
      t.integer :venue_id

      t.timestamps
    end
  end
end

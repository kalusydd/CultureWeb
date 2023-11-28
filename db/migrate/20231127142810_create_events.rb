class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.date :date
      t.time :time
      t.text :category, array: true, default: []
      t.string :description
      t.string :venue_name
      t.string :venue_address
      t.integer :capacity
      t.integer :attendees, default: 0
      t.string :image_url

      t.timestamps
    end
  end
end

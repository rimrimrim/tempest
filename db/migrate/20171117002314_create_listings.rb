class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :camera_type
      t.string :url
      t.string :using_time
      t.string :language
      t.string :adress
      t.string :listing_title
      t.text :listing_contents
      t.integer :price
      t.boolean :active
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

class CreateTops < ActiveRecord::Migration
  def change
    create_table :tops do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.decimal :size
      t.string :material
      t.string :color
      t.string :image_url
      t.string :brand
      t.integer :owner_id

      t.timestamps
    end
  end
end

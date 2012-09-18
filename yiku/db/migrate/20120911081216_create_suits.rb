class CreateSuits < ActiveRecord::Migration
  def change
    create_table :suits do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :owner_id
      t.integer :hat_id
      t.integer :top_id
      t.integer :bottom_id
      t.integer :shoes_id

      t.timestamps
    end
  end
end

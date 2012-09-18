class CreateSuitAttributes < ActiveRecord::Migration
  def change
    create_table :suit_attributes do |t|
      t.string :name
      t.string :value
      t.integer :suit_id

      t.timestamps
    end
  end
end

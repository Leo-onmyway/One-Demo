class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :nick_name
      t.string :password
      t.string :email
      t.string :mobile
      t.string :blog_url
      t.string :cur_place
      t.string :face_url
      t.integer :role_id

      t.timestamps
    end
  end
end

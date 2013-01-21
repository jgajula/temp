class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :name
      t.boolean :disabled
      t.string :fb_username
      t.string :tw_username
      t.time :last_login
      t.string :reset_password
      t.string :email
      t.integer :zipcode

      t.timestamps
    end
  end
end

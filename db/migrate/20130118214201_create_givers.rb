class CreateGivers < ActiveRecord::Migration
  def change
    create_table :givers do |t|
      t.integer :user_id
      t.string :name
      t.string :session_id
      t.integer :taker_id
      t.integer :product_id
      t.text :comment

      t.timestamps
    end
  end
end

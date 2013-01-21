class CreateTakers < ActiveRecord::Migration
  def change
    create_table :takers do |t|
      t.integer :user_id
      t.string :session_id
      t.boolean :disabled

      t.timestamps
    end
  end
end

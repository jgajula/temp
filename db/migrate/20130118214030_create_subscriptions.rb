class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :email
      t.integer :category_id
      t.boolean :disabled
      t.integer :user_id
      t.boolean :sent

      t.timestamps
    end
  end
end

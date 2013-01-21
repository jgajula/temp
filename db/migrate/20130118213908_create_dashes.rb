class CreateDashes < ActiveRecord::Migration
  def change
    create_table :dashes do |t|
      t.integer :product_id
      t.integer :category_id
      t.boolean :disabled
      t.integer :order

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :visible_id
      t.integer :upc
      t.string :name
      t.text :description
      t.float :original_price
      t.float :sale_price
      t.boolean :on_sale
      t.string :category
      t.string :brand
      t.string :external_id
      t.string :source_site
      t.float :rating
      t.string :pic_url
      t.integer :likes
      t.boolean :disabled

      t.timestamps
    end
  end
end

class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :popularity
      t.boolean :disabled
      t.string :group

      t.timestamps
    end
  end
end

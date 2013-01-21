class Product < ActiveRecord::Base
  attr_accessible :brand, :category, :description, :disabled, :external_id, :likes, :name, :on_sale, :original_price, :pic_url, :rating, :sale_price, :source_site, :upc, :visible_id
end

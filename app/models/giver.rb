class Giver < ActiveRecord::Base
  attr_accessible :comment, :name, :product_id, :session_id, :taker_id, :user_id
end

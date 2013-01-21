class Subscription < ActiveRecord::Base
  attr_accessible :category_id, :disabled, :email, :sent, :user_id
end

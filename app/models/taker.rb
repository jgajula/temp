class Taker < ActiveRecord::Base
  attr_accessible :disabled, :session_id, :user_id
end

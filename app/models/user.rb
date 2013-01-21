class User < ActiveRecord::Base
  attr_accessible :disabled, :email, :fb_username, :last_login, :name, :password, :reset_password, :tw_username, :username, :zipcode
end

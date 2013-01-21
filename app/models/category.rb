class Category < ActiveRecord::Base
  attr_accessible :disabled, :group, :name, :popularity
end

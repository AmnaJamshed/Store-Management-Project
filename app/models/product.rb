class Product < ActiveRecord::Base
  attr_accessible :content, :name, :price
end

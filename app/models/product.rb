class Product < ActiveRecord::Base
  attr_accessible :content, :URL, :name, :price
end

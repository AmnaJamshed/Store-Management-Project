class Product < ActiveRecord::Base
  attr_accessible :content, :name, :price, :attachments_attributes

  has_many :attachments, as: :attachable

  accepts_nested_attributes_for :attachments
end

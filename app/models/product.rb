class Product < ActiveRecord::Base
  attr_accessible :content, :name, :price, :attachments_attributes
  PER_PAGE_NUMBER = 3

  has_many :attachments, as: :attachable

  accepts_nested_attributes_for :attachments, allow_destroy: :true
  belongs_to :user
  has_many :reviews, dependent: :destroy
end

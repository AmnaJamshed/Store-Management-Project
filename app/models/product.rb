class Product < ActiveRecord::Base
  attr_accessible :content, :name, :price, :user_id, :attachments_attributes
  PER_PAGE_NUMBER = 10

  has_many :attachments, as: :attachable

  accepts_nested_attributes_for :attachments, allow_destroy: :true
  belongs_to :user
  has_many :reviews, dependent: :destroy
end

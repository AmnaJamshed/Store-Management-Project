class Review < ActiveRecord::Base
  attr_accessible :comment

  belongs_to :product
  belongs_to :user

  def display_user_email
    user.email
  end
end

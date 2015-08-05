class ReviewsController < ApplicationController
  before_filter :load_product

  def create
    @review = @product.reviews.new(params[:review])
    @review.user_id = current_user.id
    if @review.save
      redirect_to @product, notice: "Added review."
    else
      render :new
    end
  end

  private

  def load_product
    @product = Product.find(params[:product_id])
  end
end
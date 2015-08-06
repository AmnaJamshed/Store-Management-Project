class ReviewsController < ApplicationController
  before_filter :load_product

  def create
    @review = @product.reviews.new(params[:review])
    @review.user_id = current_user.id

    respond_to do |format|
      if @review.save
        format.html { redirect_to @product, notice: "Thank you for reviewing this product"}
        format.js
      else
        format.html { render action: :new }
        format.js
      end
    end
  end

  private

  def load_product
    @product = Product.find(params[:product_id])
  end
end
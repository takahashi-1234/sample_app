class Public::ReviewsController < ApplicationController
  def index
    @reviews=Review.all
    @review=Review.new
  end
  def show
  end
  def create
    review=Review.new(review_params)
    review.customer_id=current_customer.id
    review.save
    redirect_back(fallback_location:root_path)
  end
  
  private
  def review_params
    params.require(:review).permit(:title,:body,:image)
  end
end

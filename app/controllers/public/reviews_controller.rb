class Public::ReviewsController < ApplicationController
  def index
    @reviews=Review.page(params[:page])
    @review=Review.new
    @tag_list=Tag.all
  end
  
  def show
  end
  
  def create
    @review=current_customer.reviews.new(review_params)
    tag_list=params[:review][:tag_name].split("、")
    if @review.save
      @review.save_tag(tag_list)
      redirect_back(fallback_location:root_path)
    else
      redirect_back(fallback_location:root_path)
    end
  end

  def destroy
    review=Review.find(params[:id])
    review.destroy
    redirect_back(fallback_location:root_path)
  end
  
  private
  def review_params
    params.require(:review).permit(:title,:body,:image,:sake_type,:kind)
  end
end

class Public::TagsController < ApplicationController
  def show
    @tag=Tag.find(params[:id])
    @review=Review.new
  end
end

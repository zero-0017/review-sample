class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.save
    redirect_to shop_path(@review.shop)
  end

  private
    def review_params
      params.require(:review).permit(:shop_id, :body)
    end
end

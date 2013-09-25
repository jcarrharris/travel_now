  class ReviewsController < ApplicationController
 before_filter :load_destination

  def show
  	@review = Review.find(params[:id])
  end

  def create
  	@review = @destination.reviews.build(params[:review])
    @review.user_id = current_user.id

    if @review.save
      redirect_to destinations_path, notice: 'Review created successfully'
    else
      render :action => :show
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private

  def load_destination
    @destination = Destination.find(params[:destination_id])
  end

end

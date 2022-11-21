class ReviewController < ApplicationController

  def index
  end

  def new
  end

  def create
    @user = User.find(params[:user_id])
    @review = @user.reviews.create(reviews_params)
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private

    def reviews_params
      params.require(:review).permit(:body)
    end
end

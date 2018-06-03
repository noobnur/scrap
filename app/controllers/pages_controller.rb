class PagesController < ApplicationController

  def home
     @products = Product.all

  if params[:name]
    @queryProducts = Product.where('name LIKE ?', "%#{params[:name]}%")
  else
    @queryProducts = Product.all
  end

     # @lessons_id = Lesson.ids
     # @all_languages = Lesson.distinct.pluck(:language_taught).sort
      # @all_prices = Product.distinct.pluck(:price).sort
    #  @all_requests = Product.search(params[:category], params[:price]).order(:datetime)
     # @booked = Booking.pluck(:lesson_id)

    #  render json: @allbooked
    #render json: @products
    #  @lessons.where(lesson_id: )
  end

end

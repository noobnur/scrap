class ProductsController < ApplicationController

  def index
    @products = Product.all.order('created_at DESC')
    # render json: @products
    # redirect_to root_path
  end

  def show
    # @all_lessons = Lesson.all.order('created_at DESC')
    # find_lesson
    # @booking = Booking.find_by_lesson_id(params[:id])
    # # render json: @booking
    # tutor = @lesson.tutor_id
    # @lesson_tutor = User.find(tutor)
    # @tutor_lessons = Lesson.where(tutor_id: tutor)
    # @booked = Booking.pluck(:lesson_id)
  end

  def new
     @new_product = Product.new
  end

  def create

     @new_product= Product.new(product_params)

     # @nproduct = Product.new(params[:name][:price][:description][:Category])
    #@n_product = Product.new product_params
    @new_product.user_id = current_user.id
    @new_product.location_id = params[:Location]
    @new_product.category_id = params[:Category]

    @new_product.save

    if @new_product.save
      redirect_to root_path
    else
      render 'new'
    end


  end
  private
    def product_params
      params.require(:product).permit(:name, :price, :description, :deadline)
    end


  def update
    if current_user.id == find_lesson.tutor_id
      @lesson = Lesson.find(params[:id])
      if @lesson.update(lesson_params)
        redirect_to lesson_path(@lesson)
      else
        render 'edit'
      end
    end
  end

  def authorize_tutor
    redirect_to root_path if current_user.reg_tutor == false
  end

  def lesson_params
    params.require(:lesson).permit(:duration, :price, :datetime, :venue, :language_taught, :tutor_id, :name, :details)
  end

  private

  def find_lesson
    @lesson = Lesson.find(params[:id])
  end
end

class Admin::FoodCategoriesController < Admin::BaseController
  before_action :set_food_category, only: [:show, :edit, :update, :destroy]

  def index
    @q = FoodCategory.sorted.ransack(params[:q])
    @food_categories = @q.result.page(params[:page])
  end

  def new
    @food_category = FoodCategory.new
  end

  def create
    food_category = FoodCategory.create(food_category_params)
    flash[:notice] = '创建成功'
    redirect_to admin_food_categories_path
  end

  def edit
  end

  def update
    @food_category.update(food_category_params)
    flash[:notice] = '修改成功'
    redirect_to admin_food_categories_path
  end

  def destroy
    @food_category.destroy
    redirect_to admin_food_categories_path
  end

  private
  def food_category_params
    params.require(:food_category).permit!
  end

  def set_food_category
    @food_category = FoodCategory.find params[:id]
  end
end

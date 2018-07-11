class Admin::FoodsController < Admin::BaseController
  before_action :set_food, only: [:show, :edit, :update, :destroy]

  def index
    @q = Food.sorted.ransack(params[:q])
    @foods = @q.result.page(params[:page])
  end

  def new
    @food = Food.new
  end

  def create
    food = Food.create(food_params)
    flash[:notice] = '创建成功'
    redirect_to admin_foods_path
  end

  def edit
  end

  def update
    @food.update(food_params)
    flash[:notice] = '修改成功'
    redirect_to admin_foods_path
  end

  def destroy
    @food.destroy
    redirect_to admin_foods_path
  end

  private
  def food_params
    params.require(:food).permit!
  end

  def set_food
    @food = Food.find params[:id]
  end
end

class Admin::DemandsController < Admin::BaseController
  before_action :set_demand, only: [:show, :edit, :update, :destroy, :switch]

  def index
    @q = Demand.sorted.ransack(params[:q])
    @demands = @q.result.page(params[:page])
  end

  def edit
  end

  def update
    @demand.update(demand_params)
    flash[:notice] = 'Good'
    redirect_to admin_demands_path
  end

  def destroy
    @demand.destroy
    redirect_to admin_demands_path
  end

  def switch
    if @demand.handled?
      @demand.unhandled!
    else
      @demand.handled!
    end
    redirect_to admin_demands_path
  end

  private
  def demand_params
    params.require(:demand).permit(:kind, :content, :contact_kind, :contact)
  end

  def set_demand
    @demand = Demand.find(params[:id])
  end
end

class Site::DemandsController < Site::BaseController

  def show
  end

  def new
    @demand = Demand.new
  end

  def create
    demand = Demand.create(demand_params)
    redirect_to demand_path(demand)
  end

  private
  def demand_params
    params.require(:demand).permit!
  end

end

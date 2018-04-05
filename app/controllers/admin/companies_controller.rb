class Admin::CompaniesController < Admin::BaseController
  before_action :set_company, only: [:show, :edit, :update]

  def index
    @q = Company.sorted.ransack(params[:q])
    @companies = @q.result.page(params[:page])
  end

  def new
    @company = Company.new
  end

  def create
    company = Company.create(company_params)
    flash[:notice] = '创建成功'
    redirect_to admin_companies_path
  end

  def edit
  end

  def update
    @company.update(company_params)
    flash[:notice] = '修改成功'
    redirect_to admin_companies_path
  end

  private
  def company_params
    params.require(:company).permit!
  end

  def set_company
    @company = Company.find params[:id]
  end
end

class Admin::OrganizationCategoriesController < Admin::BaseController
  before_action :set_organization_category, only: [:show, :edit, :update]

  def index
    @q = OrganizationCategory.sorted.ransack(params[:q])
    @organization_categories = @q.result.page(params[:page])
  end

  def new
    @organization_category = OrganizationCategory.new
  end

  def create
    organization_category = OrganizationCategory.create(organization_category_params)
    flash[:notice] = '创建成功'
    redirect_to admin_organization_categories_path
  end

  def edit
  end

  def update
    @organization_category.update(organization_category_params)
    flash[:notice] = '修改成功'
    redirect_to admin_organization_categories_path
  end

  private
  def organization_category_params
    params.require(:organization_category).permit!
  end

  def set_organization_category
    @organization_category = OrganizationCategory.find params[:id]
  end
end

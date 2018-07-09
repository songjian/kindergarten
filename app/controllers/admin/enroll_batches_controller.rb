class Admin::EnrollBatchesController < Admin::BaseController
  before_action :set_enroll_batch, only: [:show, :edit, :update, :destroy, :switch]

  def index
    @q = EnrollBatch.sorted.ransack(params[:q])
    @enroll_batches = @q.result.page(params[:page])
  end

  def new
    @enroll_batch = EnrollBatch.new
  end

  def create
    enroll_batch = EnrollBatch.create(enroll_batch_params)
    flash[:notice] = '创建成功'
    redirect_to admin_enroll_batches_path
  end

  def edit
  end

  def update
    @enroll_batch.update(enroll_batch_params)
    flash[:notice] = '修改成功'
    redirect_to admin_enroll_batches_path
  end

  def destroy
    @enroll_batch.destroy
    redirect_to admin_enroll_batches_path
  end

  def switch
    if @enroll_batch.enable?
      @enroll_batch.disable!
    else
      EnrollBatch.update(state: :disable)
      @enroll_batch.enable!
    end
    redirect_to admin_enroll_batches_path
  end

  private
  def enroll_batch_params
    params.require(:enroll_batch).permit!
  end

  def set_enroll_batch
    @enroll_batch = EnrollBatch.find params[:id]
  end
end

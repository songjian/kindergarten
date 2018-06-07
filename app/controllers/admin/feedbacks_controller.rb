class Admin::FeedbacksController < Admin::BaseController
  before_action :set_feedback, only: [:show, :edit, :update, :destroy, :switch]

  def index
    @q = Feedback.sorted.ransack(params[:q])
    @feedbacks = @q.result.page(params[:page])
  end

  def edit
  end

  def update
    @feedback.update(feedback_params)
    flash[:notice] = 'Good'
    redirect_to admin_feedbacks_path
  end

  def destroy
    @feedback.destroy
    redirect_to admin_feedbacks_path
  end

  def switch
    if @feedback.handled?
      @feedback.unhandled!
    else
      @feedback.handled!
    end
    redirect_to admin_feedbacks_path
  end

  private
  def feedback_params
    params.require(:feedback).permit(:kind, :content)
  end

  def set_feedback
    @feedback = Feedback.find(params[:id])
  end
end

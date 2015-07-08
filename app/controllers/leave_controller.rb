class LeaveController < ApplicationController
  
  def show
    @leave= Leave.find(params[:id])
  end

  def new
    @leave = current_user.leave.new
  end

def create
     @leave = current_user.leave.build(leave_params)
     @leave.approver_id= current_user.manager.id
    if @leave.save
      flash[:success] = "Leave Applied!"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
    @leave= Leave.find_by(params[:user_id])
  end

  def update
  end

  def destroy
  end

    private
def leave_params
      params.require(:leave).permit(:start_date, :end_date, :reason)
end
end

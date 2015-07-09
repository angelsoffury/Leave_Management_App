class LeaveController < ApplicationController
  
  def show
    @leave= Leave.find(params[:id])
  end

  def new
    @leave = current_user.leave.new
  end

  def create
     @leave = current_user.leave.build(leave_params)
     @leave.approver_id= current_user.manager_id
    if @leave.save
      flash[:success] = "Leave Applied!"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def destroy
  end

  def approve
    set_status("Approved")
  end

  def reject
    set_status("Rejected")
  end
    private
  def leave_params
      params.require(:leave).permit(:leave_type, :start_date, :end_date, :reason)
  end

  def set_status(status)
    @leave= Leave.find(params[:id])
      @leave.status=status
      if @leave.save
        redirect_to root_url
      end
  end
end

module LeaveHelper
  def leave_status(leave)
    if leave.status == 'Approved'
      'success'
    elsif leave.status == 'Rejected'
      'error'
        
    end
  end

  def leave_status_text(leave)
    if leave.status == 'Approved'
      "text-success"
    elsif leave.status == 'Rejected'
      "text-error"    
    end
  end

end

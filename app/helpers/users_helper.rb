module UsersHelper
  def get_dashboard_name
    current_user.has_subordinates? ? "MANAGER DASHBOARD" : "EMPLOYEE DASHBOARD"
  end
end

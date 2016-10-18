module SessionsHelper

	def log_in(employee)
    session[:id] = employee.id
  end

  def log_out
    session.delete(:id)
    flash[:title] = "Success"
    flash[:notice] = "Logout successful"
    @current_user = nil
  end

  def current_user
    @current_user ||= Employee.find_by(id: session[:id])
  end

  def logged_in?
    !current_user.nil?
  end

  def destroy
    log_out
  end

end

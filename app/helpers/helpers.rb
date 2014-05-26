helpers do
  def current_user
    @user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def verify_user
    redirect to '/login' unless current_user
  end

  def verify_and_get_current_user
    verify_user
    current_user
  end
end

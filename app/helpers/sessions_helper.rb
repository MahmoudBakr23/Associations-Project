module SessionsHelper
  
  def links
    if current_user 
       link_to  "Logout", logout_path, method: :delete 
    else 
       link_to  "Login", login_path unless current_user 
    end
  end

  def create_event
    if current_user
      link_to  "Create a new Event", new_event_path
    end
  end

  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

end

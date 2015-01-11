module SessionsHelper

  def login(user)
    session[:user_id] = user.id
  end

  def current_user
    if (session[:user_id])
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end

  def login?
    !current_user.nil?
  end

  def logout
    if login?
      @current_user = nil
      session.delete(user_id)
    end
  end
end

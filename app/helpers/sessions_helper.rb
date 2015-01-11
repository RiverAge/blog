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

	def login_redirect
		redirect_to session[:will_redirect] || :root
		session.delete(:will_redirect)
	end

	def author_check(user_id)
		current_user && current_user.id == user_id
	end

	def login_require
	  if !login?
			session[:will_redirect] = request.fullpath
			redirect_to :login
		end
	def post_of_user(post)
		user = User.find_by(id: post.user_id) if post
		user.name if user
	end

  def logout
    if login?
      @current_user = nil
      session.delete(:user_id)
    end
  end
end

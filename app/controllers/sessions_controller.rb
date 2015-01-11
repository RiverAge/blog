class SessionsController < ApplicationController
  def new
  end

  def destroy
    logout
    redirect_to :root
  end

  def create
    email = session_params[:email].downcase
    user = User.find_by(email: email)
    if user && user.authenticate(session_params[:password])
      login user
      redirect_to :root
    else
      render :new
    end
  end

  private

  def session_params
    params[:session]
  end
end

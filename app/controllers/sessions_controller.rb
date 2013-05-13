class SessionsController < ApplicationController
  def new
  end

  def create
    u = User.find_by_username(params[:username])

    if u.present? && u.authenticate(params[:password])
      session[:user_id] = u.id
      redirect_to movies_url, notice: 'Signed in successfully.'
    else
      redirect_to 'http://localhost:3000/sessions/new', notice: 'Nice try.'
    end
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "Signed out successfully."
  end
end

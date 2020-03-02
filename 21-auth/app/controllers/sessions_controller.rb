class SessionsController < ApplicationController
  skip_before_action :authorize_user


  def new
  end

  def create
    @user = User.find_by(name: params[:name])

    if @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:user_id)
    session[:score] = 0
    flash[:notice] = 'logged out successfully'
    redirect_to login_path
  end
end

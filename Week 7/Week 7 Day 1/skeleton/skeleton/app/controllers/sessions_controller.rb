class SessionsController < ApplicationController
    before_action :require_logged_out, only: [:new, :create]
    # only run new and create when you're logged out 
    before_action :require_logged_in, only: [:destroy]
    # only run destroy when you're logged in 
  def new
  end

  def create
    @user = User.find_by_credentials(params[:user][:user_name], params[:user][:password])
    if @user 
        login(@user)
        redirect_to user_url(@user)
    else
        render :new
    end
  end

  def destroy
    logout!
    redirect_to new_session_url
  end

end

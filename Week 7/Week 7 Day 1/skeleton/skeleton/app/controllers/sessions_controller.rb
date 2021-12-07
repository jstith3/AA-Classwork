class SessionsController < ApplicationController
    
  def new
  end

  def create
    @user = User.find_by_credentials(params[:user][:user_name], params[:user])
  end

end

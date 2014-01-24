class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end


#class SessionsController < ApplicationController
#  def create
#    user = User.from_omniauth(env["omniauth.auth"])
#    session[:user_id] = user.id
#    redirect_to root_url
#  end
#
#  def destroy
#    session[:user_id] = nil
#    redirect_to root_url
#  end
#end
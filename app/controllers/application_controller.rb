class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_current_user

  def set_current_user
    @current_user = User.find(session[:user_id]) if session[:user_id]
  end

  def signed_in_as_admin?
    @current_user && @current_user.is_admin?
  end

  def authorize_admin
    redirect_to root_path, notice: "Wrong!" if !signed_in_as_admin?
  end
end

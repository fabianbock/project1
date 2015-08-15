class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :devise_allow_name, if: :devise_controller?

  def after_sign_in_path_for(resource)
   users_show_path
 end


  def devise_allow_name
     devise_parameter_sanitizer.for(:sign_up) << :name
  end
end

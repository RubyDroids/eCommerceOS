class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout :layout_by_resource
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  
  # def after_sign_in_path_for(resource)
  #   if current_user.admin?
  #     redirect_to backoffice_root_path, notice: "Logeaste a Backoffice"
  #   else
  #     redirect_to root_path, notice: "Bienvenido #{current_user.full_name}"
  #   end
  # end
    
  def layout_by_resource
    if devise_controller?
      "sessions"
    else
      "application"
    end
  end
  
  protected

  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end  
end

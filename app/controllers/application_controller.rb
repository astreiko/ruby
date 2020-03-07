class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
      if current_user.active?
        user_root_path  
      else
        sign_out(current_user)
        user_session_path
      end
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  before_action :configure_permitted_parameters, if:  :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:active])
    end

end

class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?

  protected 
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:name, :profile, :buyer_flag, :seller_flag, :image)
    end
      
  protect_from_forgery with: :exception
  
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end
    
    def logged_in?
        !current_user.nil?
    end
end

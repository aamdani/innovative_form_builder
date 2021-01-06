class ApplicationController < ActionController::Base
  include Pagy::Backend
  include Pundit

  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :middle_name, :last_name, :time_zone, :accepted_terms_at, :accepted_privacy_at])
  end
end

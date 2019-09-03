class ApplicationController < ActionController::Base

before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:mass_or_not, :description, :diploma, massages_attributes: :massage_type])
  end
end

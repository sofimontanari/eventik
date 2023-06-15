class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:avatar, :email, :password, :name, :last_name, :birth_date, :user_name, :supplier, :business_name, :address, :rut, :description, :service_type, :capacity, :duration, :includes, :benefits, :notes )}
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:avatar, :email, :password, :current_password, :name, :last_name, :birth_date, :user_name, :supplier, :business_name, :address, :rut, :description, :service_type, :capacity, :duration, :includes, :benefits, :notes )}
      end
end

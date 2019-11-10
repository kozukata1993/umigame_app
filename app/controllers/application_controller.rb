class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  private

  # ログイン後のリダイレクト先
  def after_sign_in_path_for(resource_or_scope)
    user_path(@user)
  end

  # # ログアウト後のリダイレクト先
  # def after_sign_out_path_for(resource_or_scope)
  #   if resource_or_scope == :admin_admin_user
  #     new_admin_admin_user_session_path
  #   else
  #     new_user_session_path
  #   end
  # end
end

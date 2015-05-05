class ApplicationController < ActionController::Base
  # include Pundit

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, unless: :pages_controller?


  # after_action :verify_authorized, except:  :index, unless: :devise_or_pages_controller?
  # after_action :verify_policy_scoped, only: :index, unless: :devise_or_pages_controller?

  # def manage_cookies
  #   if current_user.id != cookies.permanent.signed[:user_id]
  #     cookies.permanent.signed = {
  #     user_id: current_user.id,
  #     profile_id: current_profile.id
  #     }
  # end


  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  helper_method :current_profile

  def current_profile
    if user_signed_in?
      @_cp ||= if cookies.permanent.signed[:profile_id]
        current_user.profiles.find(cookies.permanent.signed[:profile_id])
      else
        current_user.profiles.last
      end
    end
  end

  def current_account
    current_profile.account
  end

  private

  def devise_or_pages_controller?
    devise_controller? || pages_controller?
  end

  def pages_controller?
    controller_name == "pages"  # Brought by the `high_voltage` gem
  end

  def user_not_authorized
    flash[:error] = I18n.t('controllers.application.user_not_authorized', default: "You can't access this page.")
    redirect_to(root_path)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:email, :password, :name, :picture)
    end
  end

  def after_sign_in_path_for(resource)
    feed_path
  end

end



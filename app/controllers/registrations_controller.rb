class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create
    build_resource(sign_up_params)
    resource_saved = resource.save
    yield resource if block_given?
    if resource_saved && create_profile(resource)
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_flashing_format?
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      @validatable = devise_mapping.validatable?
      if @validatable
        @minimum_password_length = resource_class.password_length.min
      end
      respond_with resource
    end
  end

  def create_profile(user)
    account = Account.where(account_params).first_or_initialize
    if account.save
      profile = user.profiles.create(account_id: account.id, user_id: user.id)
      return true
    else
      return false
    end
  end

  private

  def account_params
    params.require(:account).permit(:name)
  end

  def sign_up_params
    if devise_params
      {
        name: params[:user][:name],
        email: params[:user][:email],
        password: params[:user][:password],
        picture: params[:user][:picture],
      }
    end
  end


  def devise_params
    devise_parameter_sanitizer.for(:sign_up).push(:email, :password, :name, :picture)
  end


end
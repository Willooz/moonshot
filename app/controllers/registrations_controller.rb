class RegistrationsController < Devise::RegistrationsController
  def new
    super
  end

  def create

    build_resource(sign_up_params)

    resource.save
    yield resource if block_given?
    if resource.persisted? && create_membership(resource)
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
      set_minimum_password_length
      respond_with resource
    end

  end

  def create_membership(user)
    account = Account.where(account_params).first_or_initialize
    if account.save
      membership = user.memberships.create(account_id: account.id, user_id: user.id)
      return true
    else
      return false
    end
  end

  private
  def account_params
    params.require(:account).permit(:name)
  end
end
class Users::RegistrationsController < Devise::RegistrationsController
# before_action :configure_sign_up_params, only: [:create]
# before_action :configure_account_update_params, only: [:update]


  def create
    build_resource(sign_up_params)
    super
    # if @user
    Notifier.welcome_email(@user).deliver_now
    # end
  end

  private

  def sign_up_params
    params.require(:user).permit(:name,:email, :password, :password_confirmation,)
  end
  
end


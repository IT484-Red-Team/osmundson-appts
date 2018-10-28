class Registrationcontroller < Devise::Registrationcontroller
    private
    
    def sign_up_params
        params.require(:user).permit(:firstname, :lastname, :phonenumber, :email, :password, :password_confirmation)
    end
    
    def account_update_params
        params.require(:user).permit(:firstname, :lastname, :phonenumber, :email, :password, :password_confirmation, :current_password)
    end

end
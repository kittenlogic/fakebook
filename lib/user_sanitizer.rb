class User::ParameterSanitizer < Devise::ParameterSanitizer
    private
    def account_update
        default_params.permit(:first_name, :last_name, :profile_name, :email, :password, :password_confirmation, :remember_me, :current_password)
    end

    def sign_in
		default_params.permit(:email, :password, :remember_me)
	end

	def sign_up
        default_params.permit(:first_name, :last_name, :profile_name, :email, :password, :password_confirmation)
    end
end

# If, in the future, you decide to customize Devise further by adding additional roles, just add another sanitizer to the lib directory–admin_sanitizer.rb, maybe–and include it in your initializer.
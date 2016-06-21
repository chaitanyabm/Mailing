class Notifier < ApplicationMailer
	default :from => "chaitanya@carmatec.com"
	 def welcome_email(user)
    	@user = user
   		mail(to: @user.email, cc: "chaitanya@carmatec.com", subject: 'Welcome to My Awesome Site')
  	end
end

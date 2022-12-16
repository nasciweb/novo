class UserNotifierMailer < ApplicationMailer
default :from => 'no-replay@senemailapp.com' 
end

def send_signup_email(user)
  @user = user
  mail( :to => @user.email,
  :subject => 'Obrigado' )
end
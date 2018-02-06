class UserMailer < ApplicationMailer
  default from: 'apptesterlucy@gmail.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://localhost:3000/users/sign_up'
    mail(to: @user.email, subject: 'Welcome to VerschenkenStattWegwerfen')
  end
end
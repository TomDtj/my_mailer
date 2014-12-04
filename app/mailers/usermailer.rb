class Usermailer < ActionMailer::Base
  default from: "coul201306@gmail.com"

  def welcome_email(user)
    @user = user
    email_with_name = "#{@user.name} <#{@user.email}>"
    @url = "127.0.0.1/login"
    mail(to:@user.email,subject: "Welcome to my awesome site")
  end
end

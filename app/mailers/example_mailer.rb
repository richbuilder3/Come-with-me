class ExampleMailer < ActionMailer::Base
  default from: "richard.c.grundy@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.example_mailer.example_message.subject
  #
  def welcome_user(user)
    @user = user
    @url = 'http://mailing_app.herokuapp.com'
    mail(to: @user.email, subject: 'Welcome to Mailing App Demo!!!!')
  end
  
end

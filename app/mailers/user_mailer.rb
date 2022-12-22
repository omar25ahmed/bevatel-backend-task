class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.order.subject
  #
  def order
    @greeting = "Hi"

    mail to: "ahmed.raph29@gmail.com"
  end
end

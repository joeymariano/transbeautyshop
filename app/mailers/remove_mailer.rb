class RemoveMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.remove_mailer.ClientEmailsMailer.subject
  #
  def ClientEmailsMailer
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end

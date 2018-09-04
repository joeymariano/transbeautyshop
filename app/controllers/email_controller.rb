class EmailController < ApplicationController
  def create
    @mailer = ClientEmailsMailer.new
    @mailer.send_email(params["email"], params["need"], params["name"], params["surname"], params["pronoun"], params["message"])

    render 'information#contact'
  end
end

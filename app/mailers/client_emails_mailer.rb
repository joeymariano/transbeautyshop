class ClientEmailsMailer < ApplicationMailer
  def send_email
    @user = params[:user]
    @url  = user_url(@user)
    delivery_options = { user_name: ENV["GMAIL_USER"],
                         password: ENV["GMAIL_PASSWORD"],
                         address: ENV["GMAIL_SMTP"] }
    mail(to: @user.email,
         subject: "Please see the Terms and Conditions attached",
         delivery_method_options: delivery_options)
  end
end

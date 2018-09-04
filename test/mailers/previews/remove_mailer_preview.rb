# Preview all emails at http://localhost:3000/rails/mailers/remove_mailer
class RemoveMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/remove_mailer/ClientEmailsMailer
  def ClientEmailsMailer
    RemoveMailer.ClientEmailsMailer
  end

end

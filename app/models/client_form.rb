class ClientForm < MailForm::Base
  attribute :name,      :validate => true
  attribute :surname,      :validate => true
  attribute :pronoun
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :need
  attribute :message,      :validate => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.

  def headers
    {
      :subject => "Trans Beauty Shop Contact Form",
      :to => "isabella@transbeautyshop.com",
      :from => %("#{name +' ' + surname + ' ' + email}" <isabella@transbeautyshop.com>)
    }
  end
end

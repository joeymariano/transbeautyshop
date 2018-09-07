class ClientForm < MailForm::Base
  attribute :name,      :validate => true
  attribute :surname
  attribute :pronoun
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :need
  attribute :message

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "My Contact Form",
      :to => "joey.michalina.mariano@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end

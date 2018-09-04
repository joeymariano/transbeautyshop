require 'test_helper'

class RemoveMailerTest < ActionMailer::TestCase
  test "ClientEmailsMailer" do
    mail = RemoveMailer.ClientEmailsMailer
    assert_equal "Clientemailsmailer", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end

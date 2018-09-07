# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# ActionMailer::Base.smtp_settings = {
#   :port           => 587,
#   :address        => "smtp.mailgun.org",
#   :domain         => ENV['MAILGUN_DOMAIN'],
#   :user_name      => ENV['MAILGUN_LOGIN'],
#   :password       => ENV['MAILGUN_PASSWORD'],
#   :authentication => :plain
# }

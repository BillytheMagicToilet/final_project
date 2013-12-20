# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
DoSomthIn::Application.initialize!

ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.default :content_type => "text/html"

ActionMailer::Base.smtp_settings =
{
  :address => "smtp.dosomth.in",
  :port => 25,
  :domain => "dosomth.in",
  :authentication => :login,
  :user_name => "dont-reply2@dosomth.in",
  :password => "vkE(lpL1",
  :enable_starttls_auto => false
}
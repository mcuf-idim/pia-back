class ApplicationMailer < ActionMailer::Base
  default from: ENV['MAIL_EMAILS_FROM']
  layout 'mailer'
end

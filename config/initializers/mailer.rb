ActionMailer::Base.smtp_settings = {
  address: ENV['MAIL_SMTP_ADRESS'],
  port: ENV['MAIL_SMTP_PORT'],
  domain: ENV['MAIL_SMTP_DOMAIN'],
  user_name: ENV['MAIL_SMTP_USER'],
  password: ENV['MAIL_SMTP_PASSWORD'],
  authentication: ENV['MAIL_SMTP_AUTH'],
  enable_starttls_auto: ENV['MAIL_SMTP_ENABLE_STARTTLS']
}

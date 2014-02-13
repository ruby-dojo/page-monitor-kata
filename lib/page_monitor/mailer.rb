require 'mail'

module Mailer
  ($stderr.puts "Specify a username and a password to send emails. Use environment variables 'username' and 'password'."; exit 1) if ENV['username'].nil? or ENV['password'].nil?

  options = { :address              => "smtp.gmail.com",
              :port                 => 587,
              :domain               => Socket.gethostname,
              :user_name            => ENV['username'],
              :password             => ENV['password'],
              :authentication       => 'plain',
              :enable_starttls_auto => true  }

  Mail.defaults do
    delivery_method :smtp, options
  end

  def self.mail from, to, subject, content
    mail = Mail.new
    mail.from = from
    mail.to = to
    mail.subject = subject
    mail.html_part do
      content_type 'text/html; charset=UTF-8'
      body content
    end
    mail.deliver!
  end
end

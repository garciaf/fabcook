class UserMailer < ActionMailer::Base
  default :from => MAIL_CONFIG[:from]
end

class ApplicationMailer < ActionMailer::Base # rubocop:todo Layout/EndOfLine
  default from: 'from@example.com'
  layout 'mailer'
end

class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def send_email(user)
    mail(to: user.email, from: "sender@example.com", subject: "You Have Mail")
  end
end

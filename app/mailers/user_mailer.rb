class UserMailer < ActionMailer::Base
  default from: "naggity@haBIT.com"

  def morning_status_email(user)
    @user = user
    mail(to: @user.email, subject: "Do it.  Do it NOOOW") do |format|
      format.html { render 'morning_status_email' }
      format.text { render 'morning_status_email_text' }
    end
  end
end

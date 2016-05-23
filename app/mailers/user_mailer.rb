class UserMailer < ApplicationMailer
  
  def welcome_email(blog,email)
  	@blog = blog
    mail(to: [email], subject: "Blog Invitation")
  end
end
 
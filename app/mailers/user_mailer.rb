class UserMailer < ApplicationMailer
  
  def share_blog_email(blog, email, author)
    @blog = blog
    @author = author
    mail(to: [email], subject: "Blog Invitation")
  end
end

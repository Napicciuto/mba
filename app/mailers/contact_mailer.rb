class ContactMailer < ActionMailer::Base
  default from: "info@bemymba.com"

  def contact_us(info)
  	@info = info
  	binding.pry
  	mail(to: 'info@bemymba.com', subject: 'Contact Us')
  end

  def contact_them(info)
  	mail(to: info.email, subject: 'Contact Us')
  end
end

class ContactMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def send_contact(contact)
    @contact = contact
    mail(to: @contact.destination_email, subject: 'Contact Form Submission')
  end
end

# Handle contacts
class ContactsController < ApplicationController
  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

  def create
    @result = Contact.create(contact_params)
    return render json: { error: 'Contact error' }, status: 500 unless @result.valid?

    ContactMailer.send_contact(@result).deliver_now

    render json: @result, status: 200
  end
end

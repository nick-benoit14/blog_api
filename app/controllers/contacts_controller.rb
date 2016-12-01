class ContactsController < ApplicationController
  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end

  def create
    result = Contact.create(contact_params)
    render json: { error: 'could not create contact' }, status: 500 unless result.valid?
    render json: result, status: 200
  end
end

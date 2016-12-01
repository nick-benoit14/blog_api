class Contact < ApplicationRecord
  before_create :set_destination

  def set_destination
    self.destination_email = Rails.application.secrets[:destination_email]
  end
end

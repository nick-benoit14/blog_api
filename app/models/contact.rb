class Contact < ApplicationRecord
  before_create :set_destination

  def set_destination
    # self.destination = TODO use rails environment variable
  end
end

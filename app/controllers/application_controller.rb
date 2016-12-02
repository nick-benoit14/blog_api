class ApplicationController < ActionController::API
  def index
    render json:{ message: 'Howdy' }
  end
end

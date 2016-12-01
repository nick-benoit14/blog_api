require 'test_helper'

class ContactsControllerTest < ActionDispatch::IntegrationTest
  # test "should get index" do
  #   get articles_url
  #   get :show, params: { id: 12 }, headers: { "HTTP_REFERER" => "http://example.com/home" }
  #   assert_response :success
  # end

  test 'should create contact' do
    name = 'Fake Name'
    params = {
      contact: {
        name: name,
        email: 'fake@example.com',
        message: 'Howdy!'
      }
    }

    post contacts_url, params: params

    assert_response :success
    body = response_body
    assert_equal Contact.where(id: body['id']).first.name, name
  end
end

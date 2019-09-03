require 'test_helper'

class MassagesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get massages_create_url
    assert_response :success
  end

end

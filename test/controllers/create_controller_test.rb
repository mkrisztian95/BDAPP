require 'test_helper'

class CreateControllerTest < ActionDispatch::IntegrationTest
  test "should get createPost" do
    get create_createPost_url
    assert_response :success
  end

end

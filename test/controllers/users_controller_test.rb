require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_path users(:alice)
    assert_response :success
  end
end

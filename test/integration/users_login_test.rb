require "test_helper"

class UsersLoginTest < ActionDispatch::IntegrationTest
  include Warden::Test::Helpers

  def setup
    Warden.test_mode!
    @valid_user = users(:alice)
  end

  test "login with valid infomation" do
    get login_path
    log_in @valid_user
    # assert_redirected_to @valid_user
    # follow_redirect!
    # assert_select "p", "Signed in successfully."
    get root_path
    assert_select "a[href=?]", user_path(@valid_user), text: "current user: #{@valid_user.username}"
    assert_select "a[href=?]", logout_path
    get user_path(@valid_user)
    assert_template "users/show"
  end
end

require "test_helper"

class UsersLoginTest < ActionDispatch::IntegrationTest
  include Warden::Test::Helpers

  def setup
    Warden.test_mode!
    @user = users(:alice)
  end

  test "login with valid infomation" do
    log_in @user

    get root_path
    assert_select "a[href=?]", user_path(@user), text: "current user: #{@user.username}"
    assert_select "a[href=?]", logout_path
    get user_path @user
    assert_template "users/show"
  end
end

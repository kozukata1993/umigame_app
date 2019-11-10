require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template "static_pages/home"
    assert_select "a[href=?]", root_path, count: 3
    assert_select "a[href=?]", about_path, count: 1
    assert_select "a[href=?]", contact_path, count: 1
    assert_select "a[href=?]", signup_path, count: 1
    assert_select "a[href=?]", login_path, count: 1
    get about_path
    assert_select "title", full_title("About")
    get signup_path
    assert_select "a[href=?]", user_google_oauth2_omniauth_authorize_path, count: 1
    assert_select "a[href=?]", user_facebook_omniauth_authorize_path, count: 1
    get login_path
    assert_select "a[href=?]", user_google_oauth2_omniauth_authorize_path, count: 1
    assert_select "a[href=?]", user_facebook_omniauth_authorize_path, count: 1
  end
end

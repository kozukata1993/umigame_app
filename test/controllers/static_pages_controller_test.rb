require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "title", "Umigame App"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | Umigame App"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | Umigame App"
  end
end

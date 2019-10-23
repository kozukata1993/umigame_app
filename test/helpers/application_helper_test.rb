require "test_helper"

class ApplicationHelperTest < ActionView::TestCase
  test "full_title helper" do
    assert_equal full_title, "Umigame App"
    assert_equal full_title("About"), "About | Umigame App"
  end
end

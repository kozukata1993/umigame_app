require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:alice)
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "username should be present" do
    @user.username = ""
    assert_not @user.valid?
  end
end

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

  test "associated problems should be destroyed" do
    @user.save
    @user.problems.create!(content: "Lorem ipsum", title: "test")
    assert_difference "Problem.count", -1 do
      @user.destroy
    end
  end
end

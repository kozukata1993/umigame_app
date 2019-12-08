require "test_helper"

class ProblemTest < ActiveSupport::TestCase
  def setup
    @user = users(:alice)
    @problem = Problem.new(content: "Lorem ipsum", user_id: @user.id)
  end

  test "should be valid" do
    assert @problem.valid?
  end

  test "user id should be present" do
    @problem.user_id = nil
    assert_not @problem.valid?
  end

  test "cotent should be present" do
    @problem.content = ""
    assert_not @problem.valid?
  end
end

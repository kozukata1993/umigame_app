require "test_helper"

class ProblemTest < ActiveSupport::TestCase
  def setup
    @user = users(:alice)
    @problem = @user.problems.build(content: "Lorem ipsum", title: "test")
  end

  test "should be valid" do
    assert @problem.valid?
  end

  test "user id should be present" do
    @problem.user_id = nil
    assert_not @problem.valid?
  end

  test "title should be present" do
    @problem.title = ""
    assert_not @problem.valid?
  end

  test "cotent should be present" do
    @problem.content = ""
    assert_not @problem.valid?
  end

  test "order should be most recent first" do
    assert_equal problems(:most_recent), Problem.first
  end
end

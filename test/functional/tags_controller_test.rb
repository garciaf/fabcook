require 'test_helper'

class TagsControllerTest < ActionController::TestCase
  test "should get cloud" do
    get :cloud
    assert_response :success
  end

end

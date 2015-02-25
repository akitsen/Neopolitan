require 'test_helper'

class NewsControllerTest < ActionController::TestCase
  test "should get newsarticles" do
    get :newsarticles
    assert_response :success
  end

end

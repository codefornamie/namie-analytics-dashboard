require 'test_helper'

class KanriDaichosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :redirect
  end
end

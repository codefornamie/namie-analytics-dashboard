require 'test_helper'

class MdmLogsControllerTest < ActionController::TestCase
  setup do
    @mdm_log = mdm_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :redirect
  end

  test "should show mdm_log" do
    get :show, id: @mdm_log
    assert_response :redirect
  end
end

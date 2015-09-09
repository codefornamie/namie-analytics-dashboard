require 'test_helper'

class MdmLogsControllerTest < ActionController::TestCase
  setup do
    @mdm_log = mdm_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mdm_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mdm_log" do
    assert_difference('MdmLog.count') do
      post :create, mdm_log: { device_updated_at: @mdm_log.device_updated_at, extracted_date: @mdm_log.extracted_date, model_name: @mdm_log.model_name, os_version: @mdm_log.os_version, tel_number: @mdm_log.tel_number, user_name: @mdm_log.user_name }
    end

    assert_redirected_to mdm_log_path(assigns(:mdm_log))
  end

  test "should show mdm_log" do
    get :show, id: @mdm_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mdm_log
    assert_response :success
  end

  test "should update mdm_log" do
    patch :update, id: @mdm_log, mdm_log: { device_updated_at: @mdm_log.device_updated_at, extracted_date: @mdm_log.extracted_date, model_name: @mdm_log.model_name, os_version: @mdm_log.os_version, tel_number: @mdm_log.tel_number, user_name: @mdm_log.user_name }
    assert_redirected_to mdm_log_path(assigns(:mdm_log))
  end

  test "should destroy mdm_log" do
    assert_difference('MdmLog.count', -1) do
      delete :destroy, id: @mdm_log
    end

    assert_redirected_to mdm_logs_path
  end
end

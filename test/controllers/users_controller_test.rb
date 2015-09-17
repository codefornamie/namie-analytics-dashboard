require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should show user" do
    get :show, id: @user
    assert_response :redirect
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :redirect
  end
end

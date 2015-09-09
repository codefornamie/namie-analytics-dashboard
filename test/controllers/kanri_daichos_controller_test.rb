require 'test_helper'

class KanriDaichosControllerTest < ActionController::TestCase
  setup do
    @kanri_daicho = kanri_daichos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kanri_daichos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kanri_daicho" do
    assert_difference('KanriDaicho.count') do
      post :create, kanri_daicho: { birthday: @kanri_daicho.birthday, google_id: @kanri_daicho.google_id, kasetsu_name: @kanri_daicho.kasetsu_name, prefecture: @kanri_daicho.prefecture, tel_number: @kanri_daicho.tel_number, toiawase_id: @kanri_daicho.toiawase_id }
    end

    assert_redirected_to kanri_daicho_path(assigns(:kanri_daicho))
  end

  test "should show kanri_daicho" do
    get :show, id: @kanri_daicho
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kanri_daicho
    assert_response :success
  end

  test "should update kanri_daicho" do
    patch :update, id: @kanri_daicho, kanri_daicho: { birthday: @kanri_daicho.birthday, google_id: @kanri_daicho.google_id, kasetsu_name: @kanri_daicho.kasetsu_name, prefecture: @kanri_daicho.prefecture, tel_number: @kanri_daicho.tel_number, toiawase_id: @kanri_daicho.toiawase_id }
    assert_redirected_to kanri_daicho_path(assigns(:kanri_daicho))
  end

  test "should destroy kanri_daicho" do
    assert_difference('KanriDaicho.count', -1) do
      delete :destroy, id: @kanri_daicho
    end

    assert_redirected_to kanri_daichos_path
  end
end

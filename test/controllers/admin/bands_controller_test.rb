require 'test_helper'

class Admin::BandsControllerTest < ActionController::TestCase
  setup do
    @admin_band = admin_bands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_bands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_band" do
    assert_difference('Admin::Band.count') do
      post :create, admin_band: { category_id: @admin_band.category_id, name: @admin_band.name }
    end

    assert_redirected_to admin_band_path(assigns(:admin_band))
  end

  test "should show admin_band" do
    get :show, id: @admin_band
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_band
    assert_response :success
  end

  test "should update admin_band" do
    patch :update, id: @admin_band, admin_band: { category_id: @admin_band.category_id, name: @admin_band.name }
    assert_redirected_to admin_band_path(assigns(:admin_band))
  end

  test "should destroy admin_band" do
    assert_difference('Admin::Band.count', -1) do
      delete :destroy, id: @admin_band
    end

    assert_redirected_to admin_bands_path
  end
end

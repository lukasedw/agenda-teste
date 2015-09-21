require 'test_helper'

class Admin::ShowsControllerTest < ActionController::TestCase
  setup do
    @admin_show = admin_shows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_shows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_show" do
    assert_difference('Admin::Show.count') do
      post :create, admin_show: { band_id: @admin_show.band_id, date: @admin_show.date, description: @admin_show.description, local: @admin_show.local, time: @admin_show.time }
    end

    assert_redirected_to admin_show_path(assigns(:admin_show))
  end

  test "should show admin_show" do
    get :show, id: @admin_show
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_show
    assert_response :success
  end

  test "should update admin_show" do
    patch :update, id: @admin_show, admin_show: { band_id: @admin_show.band_id, date: @admin_show.date, description: @admin_show.description, local: @admin_show.local, time: @admin_show.time }
    assert_redirected_to admin_show_path(assigns(:admin_show))
  end

  test "should destroy admin_show" do
    assert_difference('Admin::Show.count', -1) do
      delete :destroy, id: @admin_show
    end

    assert_redirected_to admin_shows_path
  end
end

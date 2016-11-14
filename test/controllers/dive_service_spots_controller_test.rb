require 'test_helper'

class DiveServiceSpotsControllerTest < ActionController::TestCase
  setup do
    @dive_service_spot = dive_service_spots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dive_service_spots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dive_service_spot" do
    assert_difference('DiveServiceSpot.count') do
      post :create, dive_service_spot: {  }
    end

    assert_redirected_to dive_service_spot_path(assigns(:dive_service_spot))
  end

  test "should show dive_service_spot" do
    get :show, id: @dive_service_spot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dive_service_spot
    assert_response :success
  end

  test "should update dive_service_spot" do
    patch :update, id: @dive_service_spot, dive_service_spot: {  }
    assert_redirected_to dive_service_spot_path(assigns(:dive_service_spot))
  end

  test "should destroy dive_service_spot" do
    assert_difference('DiveServiceSpot.count', -1) do
      delete :destroy, id: @dive_service_spot
    end

    assert_redirected_to dive_service_spots_path
  end
end

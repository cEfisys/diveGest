require 'test_helper'

class DiveSpotsControllerTest < ActionController::TestCase
  setup do
    @dive_spot = dive_spots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dive_spots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dive_spot" do
    assert_difference('DiveSpot.count') do
      post :create, dive_spot: { coordenads: @dive_spot.coordenads, max_depth: @dive_spot.max_depth, min_depth: @dive_spot.min_depth, name: @dive_spot.name, notes: @dive_spot.notes, sea_life: @dive_spot.sea_life }
    end

    assert_redirected_to dive_spot_path(assigns(:dive_spot))
  end

  test "should show dive_spot" do
    get :show, id: @dive_spot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dive_spot
    assert_response :success
  end

  test "should update dive_spot" do
    patch :update, id: @dive_spot, dive_spot: { coordenads: @dive_spot.coordenads, max_depth: @dive_spot.max_depth, min_depth: @dive_spot.min_depth, name: @dive_spot.name, notes: @dive_spot.notes, sea_life: @dive_spot.sea_life }
    assert_redirected_to dive_spot_path(assigns(:dive_spot))
  end

  test "should destroy dive_spot" do
    assert_difference('DiveSpot.count', -1) do
      delete :destroy, id: @dive_spot
    end

    assert_redirected_to dive_spots_path
  end
end

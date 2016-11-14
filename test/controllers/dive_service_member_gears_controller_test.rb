require 'test_helper'

class DiveServiceMemberGearsControllerTest < ActionController::TestCase
  setup do
    @dive_service_member_gear = dive_service_member_gears(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dive_service_member_gears)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dive_service_member_gear" do
    assert_difference('DiveServiceMemberGear.count') do
      post :create, dive_service_member_gear: { notes: @dive_service_member_gear.notes }
    end

    assert_redirected_to dive_service_member_gear_path(assigns(:dive_service_member_gear))
  end

  test "should show dive_service_member_gear" do
    get :show, id: @dive_service_member_gear
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dive_service_member_gear
    assert_response :success
  end

  test "should update dive_service_member_gear" do
    patch :update, id: @dive_service_member_gear, dive_service_member_gear: { notes: @dive_service_member_gear.notes }
    assert_redirected_to dive_service_member_gear_path(assigns(:dive_service_member_gear))
  end

  test "should destroy dive_service_member_gear" do
    assert_difference('DiveServiceMemberGear.count', -1) do
      delete :destroy, id: @dive_service_member_gear
    end

    assert_redirected_to dive_service_member_gears_path
  end
end

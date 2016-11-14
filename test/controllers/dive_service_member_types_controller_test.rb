require 'test_helper'

class DiveServiceMemberTypesControllerTest < ActionController::TestCase
  setup do
    @dive_service_member_type = dive_service_member_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dive_service_member_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dive_service_member_type" do
    assert_difference('DiveServiceMemberType.count') do
      post :create, dive_service_member_type: { description: @dive_service_member_type.description, notes: @dive_service_member_type.notes }
    end

    assert_redirected_to dive_service_member_type_path(assigns(:dive_service_member_type))
  end

  test "should show dive_service_member_type" do
    get :show, id: @dive_service_member_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dive_service_member_type
    assert_response :success
  end

  test "should update dive_service_member_type" do
    patch :update, id: @dive_service_member_type, dive_service_member_type: { description: @dive_service_member_type.description, notes: @dive_service_member_type.notes }
    assert_redirected_to dive_service_member_type_path(assigns(:dive_service_member_type))
  end

  test "should destroy dive_service_member_type" do
    assert_difference('DiveServiceMemberType.count', -1) do
      delete :destroy, id: @dive_service_member_type
    end

    assert_redirected_to dive_service_member_types_path
  end
end

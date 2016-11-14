require 'test_helper'

class DiveServiceMembersControllerTest < ActionController::TestCase
  setup do
    @dive_service_member = dive_service_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dive_service_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dive_service_member" do
    assert_difference('DiveServiceMember.count') do
      post :create, dive_service_member: { notes: @dive_service_member.notes, payed: @dive_service_member.payed, price: @dive_service_member.price }
    end

    assert_redirected_to dive_service_member_path(assigns(:dive_service_member))
  end

  test "should show dive_service_member" do
    get :show, id: @dive_service_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dive_service_member
    assert_response :success
  end

  test "should update dive_service_member" do
    patch :update, id: @dive_service_member, dive_service_member: { notes: @dive_service_member.notes, payed: @dive_service_member.payed, price: @dive_service_member.price }
    assert_redirected_to dive_service_member_path(assigns(:dive_service_member))
  end

  test "should destroy dive_service_member" do
    assert_difference('DiveServiceMember.count', -1) do
      delete :destroy, id: @dive_service_member
    end

    assert_redirected_to dive_service_members_path
  end
end

require 'test_helper'

class CertificationsMembersControllerTest < ActionController::TestCase
  setup do
    @certifications_member = certifications_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:certifications_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create certifications_member" do
    assert_difference('CertificationsMember.count') do
      post :create, certifications_member: { begin_date: @certifications_member.begin_date, end_date: @certifications_member.end_date, notes: @certifications_member.notes }
    end

    assert_redirected_to certifications_member_path(assigns(:certifications_member))
  end

  test "should show certifications_member" do
    get :show, id: @certifications_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @certifications_member
    assert_response :success
  end

  test "should update certifications_member" do
    patch :update, id: @certifications_member, certifications_member: { begin_date: @certifications_member.begin_date, end_date: @certifications_member.end_date, notes: @certifications_member.notes }
    assert_redirected_to certifications_member_path(assigns(:certifications_member))
  end

  test "should destroy certifications_member" do
    assert_difference('CertificationsMember.count', -1) do
      delete :destroy, id: @certifications_member
    end

    assert_redirected_to certifications_members_path
  end
end

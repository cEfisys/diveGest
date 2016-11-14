require 'test_helper'

class CertificationTypesControllerTest < ActionController::TestCase
  setup do
    @certification_type = certification_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:certification_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create certification_type" do
    assert_difference('CertificationType.count') do
      post :create, certification_type: { name: @certification_type.name, notes: @certification_type.notes }
    end

    assert_redirected_to certification_type_path(assigns(:certification_type))
  end

  test "should show certification_type" do
    get :show, id: @certification_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @certification_type
    assert_response :success
  end

  test "should update certification_type" do
    patch :update, id: @certification_type, certification_type: { name: @certification_type.name, notes: @certification_type.notes }
    assert_redirected_to certification_type_path(assigns(:certification_type))
  end

  test "should destroy certification_type" do
    assert_difference('CertificationType.count', -1) do
      delete :destroy, id: @certification_type
    end

    assert_redirected_to certification_types_path
  end
end

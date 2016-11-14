require 'test_helper'

class GearTypesControllerTest < ActionController::TestCase
  setup do
    @gear_type = gear_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gear_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gear_type" do
    assert_difference('GearType.count') do
      post :create, gear_type: { caracteristics: @gear_type.caracteristics, description: @gear_type.description, rental_price: @gear_type.rental_price }
    end

    assert_redirected_to gear_type_path(assigns(:gear_type))
  end

  test "should show gear_type" do
    get :show, id: @gear_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gear_type
    assert_response :success
  end

  test "should update gear_type" do
    patch :update, id: @gear_type, gear_type: { caracteristics: @gear_type.caracteristics, description: @gear_type.description, rental_price: @gear_type.rental_price }
    assert_redirected_to gear_type_path(assigns(:gear_type))
  end

  test "should destroy gear_type" do
    assert_difference('GearType.count', -1) do
      delete :destroy, id: @gear_type
    end

    assert_redirected_to gear_types_path
  end
end

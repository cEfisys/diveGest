require 'test_helper'

class GearSizesControllerTest < ActionController::TestCase
  setup do
    @gear_size = gear_sizes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gear_sizes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gear_size" do
    assert_difference('GearSize.count') do
      post :create, gear_size: { description: @gear_size.description }
    end

    assert_redirected_to gear_size_path(assigns(:gear_size))
  end

  test "should show gear_size" do
    get :show, id: @gear_size
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gear_size
    assert_response :success
  end

  test "should update gear_size" do
    patch :update, id: @gear_size, gear_size: { description: @gear_size.description }
    assert_redirected_to gear_size_path(assigns(:gear_size))
  end

  test "should destroy gear_size" do
    assert_difference('GearSize.count', -1) do
      delete :destroy, id: @gear_size
    end

    assert_redirected_to gear_sizes_path
  end
end

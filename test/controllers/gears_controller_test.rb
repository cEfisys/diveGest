require 'test_helper'

class GearsControllerTest < ActionController::TestCase
  setup do
    @gear = gears(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gears)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gear" do
    assert_difference('Gear.count') do
      post :create, gear: { notes: @gear.notes, purchase_date: @gear.purchase_date, reference: @gear.reference, sell_date: @gear.sell_date }
    end

    assert_redirected_to gear_path(assigns(:gear))
  end

  test "should show gear" do
    get :show, id: @gear
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gear
    assert_response :success
  end

  test "should update gear" do
    patch :update, id: @gear, gear: { notes: @gear.notes, purchase_date: @gear.purchase_date, reference: @gear.reference, sell_date: @gear.sell_date }
    assert_redirected_to gear_path(assigns(:gear))
  end

  test "should destroy gear" do
    assert_difference('Gear.count', -1) do
      delete :destroy, id: @gear
    end

    assert_redirected_to gears_path
  end
end

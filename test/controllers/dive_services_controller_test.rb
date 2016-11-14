require 'test_helper'

class DiveServicesControllerTest < ActionController::TestCase
  setup do
    @dive_service = dive_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dive_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dive_service" do
    assert_difference('DiveService.count') do
      post :create, dive_service: { date: @dive_service.date, notes: @dive_service.notes }
    end

    assert_redirected_to dive_service_path(assigns(:dive_service))
  end

  test "should show dive_service" do
    get :show, id: @dive_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dive_service
    assert_response :success
  end

  test "should update dive_service" do
    patch :update, id: @dive_service, dive_service: { date: @dive_service.date, notes: @dive_service.notes }
    assert_redirected_to dive_service_path(assigns(:dive_service))
  end

  test "should destroy dive_service" do
    assert_difference('DiveService.count', -1) do
      delete :destroy, id: @dive_service
    end

    assert_redirected_to dive_services_path
  end
end

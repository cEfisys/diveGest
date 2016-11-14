require 'test_helper'

class BoatDocumentTypesControllerTest < ActionController::TestCase
  setup do
    @boat_document_type = boat_document_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boat_document_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boat_document_type" do
    assert_difference('BoatDocumentType.count') do
      post :create, boat_document_type: { description: @boat_document_type.description, name: @boat_document_type.name, notes: @boat_document_type.notes }
    end

    assert_redirected_to boat_document_type_path(assigns(:boat_document_type))
  end

  test "should show boat_document_type" do
    get :show, id: @boat_document_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boat_document_type
    assert_response :success
  end

  test "should update boat_document_type" do
    patch :update, id: @boat_document_type, boat_document_type: { description: @boat_document_type.description, name: @boat_document_type.name, notes: @boat_document_type.notes }
    assert_redirected_to boat_document_type_path(assigns(:boat_document_type))
  end

  test "should destroy boat_document_type" do
    assert_difference('BoatDocumentType.count', -1) do
      delete :destroy, id: @boat_document_type
    end

    assert_redirected_to boat_document_types_path
  end
end

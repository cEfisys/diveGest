require 'test_helper'

class BoatDocumentsControllerTest < ActionController::TestCase
  setup do
    @boat_document = boat_documents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boat_documents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boat_document" do
    assert_difference('BoatDocument.count') do
      post :create, boat_document: { end_date: @boat_document.end_date, notes: @boat_document.notes, start_date: @boat_document.start_date }
    end

    assert_redirected_to boat_document_path(assigns(:boat_document))
  end

  test "should show boat_document" do
    get :show, id: @boat_document
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boat_document
    assert_response :success
  end

  test "should update boat_document" do
    patch :update, id: @boat_document, boat_document: { end_date: @boat_document.end_date, notes: @boat_document.notes, start_date: @boat_document.start_date }
    assert_redirected_to boat_document_path(assigns(:boat_document))
  end

  test "should destroy boat_document" do
    assert_difference('BoatDocument.count', -1) do
      delete :destroy, id: @boat_document
    end

    assert_redirected_to boat_documents_path
  end
end

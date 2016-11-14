require 'test_helper'

class MembersClientsControllerTest < ActionController::TestCase
  setup do
    @members_client = members_clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:members_clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create members_client" do
    assert_difference('MembersClient.count') do
      post :create, members_client: { birth_date: @members_client.birth_date, facebook: @members_client.facebook, mail: @members_client.mail, name: @members_client.name, telephone: @members_client.telephone, total_dives: @members_client.total_dives }
    end

    assert_redirected_to members_client_path(assigns(:members_client))
  end

  test "should show members_client" do
    get :show, id: @members_client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @members_client
    assert_response :success
  end

  test "should update members_client" do
    patch :update, id: @members_client, members_client: { birth_date: @members_client.birth_date, facebook: @members_client.facebook, mail: @members_client.mail, name: @members_client.name, telephone: @members_client.telephone, total_dives: @members_client.total_dives }
    assert_redirected_to members_client_path(assigns(:members_client))
  end

  test "should destroy members_client" do
    assert_difference('MembersClient.count', -1) do
      delete :destroy, id: @members_client
    end

    assert_redirected_to members_clients_path
  end
end

require 'test_helper'

class EapsControllerTest < ActionController::TestCase
  setup do
    @eap = eaps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eaps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eap" do
    assert_difference('Eap.count') do
      post :create, eap: { name: @eap.name }
    end

    assert_redirected_to eap_path(assigns(:eap))
  end

  test "should show eap" do
    get :show, id: @eap
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eap
    assert_response :success
  end

  test "should update eap" do
    put :update, id: @eap, eap: { name: @eap.name }
    assert_redirected_to eap_path(assigns(:eap))
  end

  test "should destroy eap" do
    assert_difference('Eap.count', -1) do
      delete :destroy, id: @eap
    end

    assert_redirected_to eaps_path
  end
end

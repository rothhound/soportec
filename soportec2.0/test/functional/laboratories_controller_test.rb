require 'test_helper'

class LaboratoriesControllerTest < ActionController::TestCase
  setup do
    @laboratory = laboratories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:laboratories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create laboratory" do
    assert_difference('Laboratory.count') do
      post :create, laboratory: { airConditioning: @laboratory.airConditioning, capacity: @laboratory.capacity, floor: @laboratory.floor, numComputers: @laboratory.numComputers, number: @laboratory.number, projector: @laboratory.projector, sound: @laboratory.sound }
    end

    assert_redirected_to laboratory_path(assigns(:laboratory))
  end

  test "should show laboratory" do
    get :show, id: @laboratory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @laboratory
    assert_response :success
  end

  test "should update laboratory" do
    put :update, id: @laboratory, laboratory: { airConditioning: @laboratory.airConditioning, capacity: @laboratory.capacity, floor: @laboratory.floor, numComputers: @laboratory.numComputers, number: @laboratory.number, projector: @laboratory.projector, sound: @laboratory.sound }
    assert_redirected_to laboratory_path(assigns(:laboratory))
  end

  test "should destroy laboratory" do
    assert_difference('Laboratory.count', -1) do
      delete :destroy, id: @laboratory
    end

    assert_redirected_to laboratories_path
  end
end

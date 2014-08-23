require 'test_helper'

class LivestocksControllerTest < ActionController::TestCase
  setup do
    @livestock = livestocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:livestocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create livestock" do
    assert_difference('Livestock.count') do
      post :create, livestock: { day_of_birth: @livestock.day_of_birth, gender: @livestock.gender, name: @livestock.name }
    end

    assert_redirected_to livestock_path(assigns(:livestock))
  end

  test "should show livestock" do
    get :show, id: @livestock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @livestock
    assert_response :success
  end

  test "should update livestock" do
    patch :update, id: @livestock, livestock: { day_of_birth: @livestock.day_of_birth, gender: @livestock.gender, name: @livestock.name }
    assert_redirected_to livestock_path(assigns(:livestock))
  end

  test "should destroy livestock" do
    assert_difference('Livestock.count', -1) do
      delete :destroy, id: @livestock
    end

    assert_redirected_to livestocks_path
  end
end

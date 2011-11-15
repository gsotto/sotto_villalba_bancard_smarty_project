require 'test_helper'

class SmartsControllerTest < ActionController::TestCase
  setup do
    @smart = smarts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:smarts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create smart" do
    assert_difference('Smart.count') do
      post :create, :smart => @smart.attributes
    end

    assert_redirected_to smart_path(assigns(:smart))
  end

  test "should show smart" do
    get :show, :id => @smart.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @smart.to_param
    assert_response :success
  end

  test "should update smart" do
    put :update, :id => @smart.to_param, :smart => @smart.attributes
    assert_redirected_to smart_path(assigns(:smart))
  end

  test "should destroy smart" do
    assert_difference('Smart.count', -1) do
      delete :destroy, :id => @smart.to_param
    end

    assert_redirected_to smarts_path
  end
end

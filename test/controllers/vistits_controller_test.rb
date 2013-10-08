require 'test_helper'

class VistitsControllerTest < ActionController::TestCase
  setup do
    @vistit = vistits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vistits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vistit" do
    assert_difference('Vistit.count') do
      post :create, vistit: { date: @vistit.date, timeinstore: @vistit.timeinstore }
    end

    assert_redirected_to vistit_path(assigns(:vistit))
  end

  test "should show vistit" do
    get :show, id: @vistit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vistit
    assert_response :success
  end

  test "should update vistit" do
    patch :update, id: @vistit, vistit: { date: @vistit.date, timeinstore: @vistit.timeinstore }
    assert_redirected_to vistit_path(assigns(:vistit))
  end

  test "should destroy vistit" do
    assert_difference('Vistit.count', -1) do
      delete :destroy, id: @vistit
    end

    assert_redirected_to vistits_path
  end
end

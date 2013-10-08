require 'test_helper'

class EntertainementsControllerTest < ActionController::TestCase
  setup do
    @entertainement = entertainements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entertainements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entertainement" do
    assert_difference('Entertainement.count') do
      post :create, entertainement: { waitingtime: @entertainement.waitingtime }
    end

    assert_redirected_to entertainement_path(assigns(:entertainement))
  end

  test "should show entertainement" do
    get :show, id: @entertainement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entertainement
    assert_response :success
  end

  test "should update entertainement" do
    patch :update, id: @entertainement, entertainement: { waitingtime: @entertainement.waitingtime }
    assert_redirected_to entertainement_path(assigns(:entertainement))
  end

  test "should destroy entertainement" do
    assert_difference('Entertainement.count', -1) do
      delete :destroy, id: @entertainement
    end

    assert_redirected_to entertainements_path
  end
end

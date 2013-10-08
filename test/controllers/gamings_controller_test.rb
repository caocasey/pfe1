require 'test_helper'

class GamingsControllerTest < ActionController::TestCase
  setup do
    @gaming = gamings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gamings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gaming" do
    assert_difference('Gaming.count') do
      post :create, gaming: { score: @gaming.score, urlgame: @gaming.urlgame }
    end

    assert_redirected_to gaming_path(assigns(:gaming))
  end

  test "should show gaming" do
    get :show, id: @gaming
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gaming
    assert_response :success
  end

  test "should update gaming" do
    patch :update, id: @gaming, gaming: { score: @gaming.score, urlgame: @gaming.urlgame }
    assert_redirected_to gaming_path(assigns(:gaming))
  end

  test "should destroy gaming" do
    assert_difference('Gaming.count', -1) do
      delete :destroy, id: @gaming
    end

    assert_redirected_to gamings_path
  end
end

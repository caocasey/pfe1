require 'test_helper'

class CrossSellingsControllerTest < ActionController::TestCase
  setup do
    @cross_selling = cross_sellings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cross_sellings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cross_selling" do
    assert_difference('CrossSelling.count') do
      post :create, cross_selling: { nbr_advice_item: @cross_selling.nbr_advice_item }
    end

    assert_redirected_to cross_selling_path(assigns(:cross_selling))
  end

  test "should show cross_selling" do
    get :show, id: @cross_selling
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cross_selling
    assert_response :success
  end

  test "should update cross_selling" do
    patch :update, id: @cross_selling, cross_selling: { nbr_advice_item: @cross_selling.nbr_advice_item }
    assert_redirected_to cross_selling_path(assigns(:cross_selling))
  end

  test "should destroy cross_selling" do
    assert_difference('CrossSelling.count', -1) do
      delete :destroy, id: @cross_selling
    end

    assert_redirected_to cross_sellings_path
  end
end

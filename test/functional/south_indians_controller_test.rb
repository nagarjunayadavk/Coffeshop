require 'test_helper'

class SouthIndiansControllerTest < ActionController::TestCase
  setup do
    @south_indian = south_indians(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:south_indians)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create south_indian" do
    assert_difference('SouthIndian.count') do
      post :create, south_indian: { item_name: @south_indian.item_name, price: @south_indian.price }
    end

    assert_redirected_to south_indian_path(assigns(:south_indian))
  end

  test "should show south_indian" do
    get :show, id: @south_indian
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @south_indian
    assert_response :success
  end

  test "should update south_indian" do
    put :update, id: @south_indian, south_indian: { item_name: @south_indian.item_name, price: @south_indian.price }
    assert_redirected_to south_indian_path(assigns(:south_indian))
  end

  test "should destroy south_indian" do
    assert_difference('SouthIndian.count', -1) do
      delete :destroy, id: @south_indian
    end

    assert_redirected_to south_indians_path
  end
end

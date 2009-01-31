require 'test_helper'

class BottlesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bottles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bottle" do
    assert_difference('Bottle.count') do
      post :create, :bottle => { }
    end

    assert_redirected_to bottle_path(assigns(:bottle))
  end

  test "should show bottle" do
    get :show, :id => bottles(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => bottles(:one).id
    assert_response :success
  end

  test "should update bottle" do
    put :update, :id => bottles(:one).id, :bottle => { }
    assert_redirected_to bottle_path(assigns(:bottle))
  end

  test "should destroy bottle" do
    assert_difference('Bottle.count', -1) do
      delete :destroy, :id => bottles(:one).id
    end

    assert_redirected_to bottles_path
  end
end

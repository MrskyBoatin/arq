require 'test_helper'

class HamsControllerTest < ActionController::TestCase
  setup do
    @ham = hams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ham" do
    assert_difference('Ham.count') do
      post :create, ham: {  }
    end

    assert_redirected_to ham_path(assigns(:ham))
  end

  test "should show ham" do
    get :show, id: @ham
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ham
    assert_response :success
  end

  test "should update ham" do
    patch :update, id: @ham, ham: {  }
    assert_redirected_to ham_path(assigns(:ham))
  end

  test "should destroy ham" do
    assert_difference('Ham.count', -1) do
      delete :destroy, id: @ham
    end

    assert_redirected_to hams_path
  end
end

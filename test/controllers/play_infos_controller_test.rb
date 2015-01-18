require 'test_helper'

class PlayInfosControllerTest < ActionController::TestCase
  setup do
    @play_info = play_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:play_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create play_info" do
    assert_difference('PlayInfo.count') do
      post :create, play_info: {  }
    end

    assert_redirected_to play_info_path(assigns(:play_info))
  end

  test "should show play_info" do
    get :show, id: @play_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @play_info
    assert_response :success
  end

  test "should update play_info" do
    patch :update, id: @play_info, play_info: {  }
    assert_redirected_to play_info_path(assigns(:play_info))
  end

  test "should destroy play_info" do
    assert_difference('PlayInfo.count', -1) do
      delete :destroy, id: @play_info
    end

    assert_redirected_to play_infos_path
  end
end

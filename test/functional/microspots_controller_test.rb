require 'test_helper'

class MicrospotsControllerTest < ActionController::TestCase
  setup do
    @microspot = microspots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microspots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microspot" do
    assert_difference('Microspot.count') do
      post :create, microspot: { content: @microspot.content, user_id: @microspot.user_id }
    end

    assert_redirected_to microspot_path(assigns(:microspot))
  end

  test "should show microspot" do
    get :show, id: @microspot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @microspot
    assert_response :success
  end

  test "should update microspot" do
    put :update, id: @microspot, microspot: { content: @microspot.content, user_id: @microspot.user_id }
    assert_redirected_to microspot_path(assigns(:microspot))
  end

  test "should destroy microspot" do
    assert_difference('Microspot.count', -1) do
      delete :destroy, id: @microspot
    end

    assert_redirected_to microspots_path
  end
end

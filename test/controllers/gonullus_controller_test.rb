require 'test_helper'

class GonullusControllerTest < ActionController::TestCase
  setup do
    @gonullu = gonullus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gonullus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gonullu" do
    assert_difference('Gonullu.count') do
      post :create, gonullu: { isim: @gonullu.isim }
    end

    assert_redirected_to gonullu_path(assigns(:gonullu))
  end

  test "should show gonullu" do
    get :show, id: @gonullu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gonullu
    assert_response :success
  end

  test "should update gonullu" do
    patch :update, id: @gonullu, gonullu: { isim: @gonullu.isim }
    assert_redirected_to gonullu_path(assigns(:gonullu))
  end

  test "should destroy gonullu" do
    assert_difference('Gonullu.count', -1) do
      delete :destroy, id: @gonullu
    end

    assert_redirected_to gonullus_path
  end
end

require 'test_helper'

class BasvuransControllerTest < ActionController::TestCase
  setup do
    @basvuran = basvurans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:basvurans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create basvuran" do
    assert_difference('Basvuran.count') do
      post :create, basvuran: { basvuran_kod: @basvuran.basvuran_kod, gonullu_id: @basvuran.gonullu_id, isim: @basvuran.isim, mail: @basvuran.mail, soyisim: @basvuran.soyisim, telefon: @basvuran.telefon, user_id: @basvuran.user_id }
    end

    assert_redirected_to basvuran_path(assigns(:basvuran))
  end

  test "should show basvuran" do
    get :show, id: @basvuran
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @basvuran
    assert_response :success
  end

  test "should update basvuran" do
    patch :update, id: @basvuran, basvuran: { basvuran_kod: @basvuran.basvuran_kod, gonullu_id: @basvuran.gonullu_id, isim: @basvuran.isim, mail: @basvuran.mail, soyisim: @basvuran.soyisim, telefon: @basvuran.telefon, user_id: @basvuran.user_id }
    assert_redirected_to basvuran_path(assigns(:basvuran))
  end

  test "should destroy basvuran" do
    assert_difference('Basvuran.count', -1) do
      delete :destroy, id: @basvuran
    end

    assert_redirected_to basvurans_path
  end
end

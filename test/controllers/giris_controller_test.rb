require 'test_helper'

class GirisControllerTest < ActionController::TestCase
  setup do
    @giri = giris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:giris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create giri" do
    assert_difference('Giri.count') do
      post :create, giri: { basvuran_id: @giri.basvuran_id, gonullu_id: @giri.gonullu_id, iletisime_gecen: @giri.iletisime_gecen, iletisime_gecme_yolu: @giri.iletisime_gecme_yolu, ilk_basvuru_tarihi: @giri.ilk_basvuru_tarihi, morcati_destegi_aliyor: @giri.morcati_destegi_aliyor, notlar: @giri.notlar }
    end

    assert_redirected_to giri_path(assigns(:giri))
  end

  test "should show giri" do
    get :show, id: @giri
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @giri
    assert_response :success
  end

  test "should update giri" do
    patch :update, id: @giri, giri: { basvuran_id: @giri.basvuran_id, gonullu_id: @giri.gonullu_id, iletisime_gecen: @giri.iletisime_gecen, iletisime_gecme_yolu: @giri.iletisime_gecme_yolu, ilk_basvuru_tarihi: @giri.ilk_basvuru_tarihi, morcati_destegi_aliyor: @giri.morcati_destegi_aliyor, notlar: @giri.notlar }
    assert_redirected_to giri_path(assigns(:giri))
  end

  test "should destroy giri" do
    assert_difference('Giri.count', -1) do
      delete :destroy, id: @giri
    end

    assert_redirected_to giris_path
  end
end

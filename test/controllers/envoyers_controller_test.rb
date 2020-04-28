require 'test_helper'

class EnvoyersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @envoyer = envoyers(:one)
  end

  test "should get index" do
    get envoyers_url
    assert_response :success
  end

  test "should get new" do
    get new_envoyer_url
    assert_response :success
  end

  test "should create envoyer" do
    assert_difference('Envoyer.count') do
      post envoyers_url, params: { envoyer: { contenu: @envoyer.contenu, titre: @envoyer.titre, user_reclamation_id: @envoyer.user_reclamation_id } }
    end

    assert_redirected_to envoyer_url(Envoyer.last)
  end

  test "should show envoyer" do
    get envoyer_url(@envoyer)
    assert_response :success
  end

  test "should get edit" do
    get edit_envoyer_url(@envoyer)
    assert_response :success
  end

  test "should update envoyer" do
    patch envoyer_url(@envoyer), params: { envoyer: { contenu: @envoyer.contenu, titre: @envoyer.titre, user_reclamation_id: @envoyer.user_reclamation_id } }
    assert_redirected_to envoyer_url(@envoyer)
  end

  test "should destroy envoyer" do
    assert_difference('Envoyer.count', -1) do
      delete envoyer_url(@envoyer)
    end

    assert_redirected_to envoyers_url
  end
end

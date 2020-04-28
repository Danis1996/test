require 'test_helper'

class FichierReclamationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fichier_reclamation = fichier_reclamations(:one)
  end

  test "should get index" do
    get fichier_reclamations_url
    assert_response :success
  end

  test "should get new" do
    get new_fichier_reclamation_url
    assert_response :success
  end

  test "should create fichier_reclamation" do
    assert_difference('FichierReclamation.count') do
      post fichier_reclamations_url, params: { fichier_reclamation: { fichier_id: @fichier_reclamation.fichier_id, reclamation_id: @fichier_reclamation.reclamation_id } }
    end

    assert_redirected_to fichier_reclamation_url(FichierReclamation.last)
  end

  test "should show fichier_reclamation" do
    get fichier_reclamation_url(@fichier_reclamation)
    assert_response :success
  end

  test "should get edit" do
    get edit_fichier_reclamation_url(@fichier_reclamation)
    assert_response :success
  end

  test "should update fichier_reclamation" do
    patch fichier_reclamation_url(@fichier_reclamation), params: { fichier_reclamation: { fichier_id: @fichier_reclamation.fichier_id, reclamation_id: @fichier_reclamation.reclamation_id } }
    assert_redirected_to fichier_reclamation_url(@fichier_reclamation)
  end

  test "should destroy fichier_reclamation" do
    assert_difference('FichierReclamation.count', -1) do
      delete fichier_reclamation_url(@fichier_reclamation)
    end

    assert_redirected_to fichier_reclamations_url
  end
end

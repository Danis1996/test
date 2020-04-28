require 'test_helper'

class ReclamationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reclamation = reclamations(:one)
  end

  test "should get index" do
    get reclamations_url
    assert_response :success
  end

  test "should get new" do
    get new_reclamation_url
    assert_response :success
  end

  test "should create reclamation" do
    assert_difference('Reclamation.count') do
      post reclamations_url, params: { reclamation: { couleur: @reclamation.couleur, durre: @reclamation.durre, titre: @reclamation.titre } }
    end

    assert_redirected_to reclamation_url(Reclamation.last)
  end

  test "should show reclamation" do
    get reclamation_url(@reclamation)
    assert_response :success
  end

  test "should get edit" do
    get edit_reclamation_url(@reclamation)
    assert_response :success
  end

  test "should update reclamation" do
    patch reclamation_url(@reclamation), params: { reclamation: { couleur: @reclamation.couleur, durre: @reclamation.durre, titre: @reclamation.titre } }
    assert_redirected_to reclamation_url(@reclamation)
  end

  test "should destroy reclamation" do
    assert_difference('Reclamation.count', -1) do
      delete reclamation_url(@reclamation)
    end

    assert_redirected_to reclamations_url
  end
end

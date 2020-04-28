require 'test_helper'

class UserReclamationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_reclamation = user_reclamations(:one)
  end

  test "should get index" do
    get user_reclamations_url
    assert_response :success
  end

  test "should get new" do
    get new_user_reclamation_url
    assert_response :success
  end

  test "should create user_reclamation" do
    assert_difference('UserReclamation.count') do
      post user_reclamations_url, params: { user_reclamation: { date: @user_reclamation.date, reclamation_id: @user_reclamation.reclamation_id, resolu: @user_reclamation.resolu, user_id: @user_reclamation.user_id, vue: @user_reclamation.vue } }
    end

    assert_redirected_to user_reclamation_url(UserReclamation.last)
  end

  test "should show user_reclamation" do
    get user_reclamation_url(@user_reclamation)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_reclamation_url(@user_reclamation)
    assert_response :success
  end

  test "should update user_reclamation" do
    patch user_reclamation_url(@user_reclamation), params: { user_reclamation: { date: @user_reclamation.date, reclamation_id: @user_reclamation.reclamation_id, resolu: @user_reclamation.resolu, user_id: @user_reclamation.user_id, vue: @user_reclamation.vue } }
    assert_redirected_to user_reclamation_url(@user_reclamation)
  end

  test "should destroy user_reclamation" do
    assert_difference('UserReclamation.count', -1) do
      delete user_reclamation_url(@user_reclamation)
    end

    assert_redirected_to user_reclamations_url
  end
end

require "application_system_test_case"

class UserReclamationsTest < ApplicationSystemTestCase
  setup do
    @user_reclamation = user_reclamations(:one)
  end

  test "visiting the index" do
    visit user_reclamations_url
    assert_selector "h1", text: "User Reclamations"
  end

  test "creating a User reclamation" do
    visit user_reclamations_url
    click_on "New User Reclamation"

    fill_in "Date", with: @user_reclamation.date
    fill_in "Reclamation", with: @user_reclamation.reclamation_id
    check "Resolu" if @user_reclamation.resolu
    fill_in "User", with: @user_reclamation.user_id
    check "Vue" if @user_reclamation.vue
    click_on "Create User reclamation"

    assert_text "User reclamation was successfully created"
    click_on "Back"
  end

  test "updating a User reclamation" do
    visit user_reclamations_url
    click_on "Edit", match: :first

    fill_in "Date", with: @user_reclamation.date
    fill_in "Reclamation", with: @user_reclamation.reclamation_id
    check "Resolu" if @user_reclamation.resolu
    fill_in "User", with: @user_reclamation.user_id
    check "Vue" if @user_reclamation.vue
    click_on "Update User reclamation"

    assert_text "User reclamation was successfully updated"
    click_on "Back"
  end

  test "destroying a User reclamation" do
    visit user_reclamations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User reclamation was successfully destroyed"
  end
end

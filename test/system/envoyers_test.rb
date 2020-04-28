require "application_system_test_case"

class EnvoyersTest < ApplicationSystemTestCase
  setup do
    @envoyer = envoyers(:one)
  end

  test "visiting the index" do
    visit envoyers_url
    assert_selector "h1", text: "Envoyers"
  end

  test "creating a Envoyer" do
    visit envoyers_url
    click_on "New Envoyer"

    fill_in "Contenu", with: @envoyer.contenu
    fill_in "Titre", with: @envoyer.titre
    fill_in "User reclamation", with: @envoyer.user_reclamation_id
    click_on "Create Envoyer"

    assert_text "Envoyer was successfully created"
    click_on "Back"
  end

  test "updating a Envoyer" do
    visit envoyers_url
    click_on "Edit", match: :first

    fill_in "Contenu", with: @envoyer.contenu
    fill_in "Titre", with: @envoyer.titre
    fill_in "User reclamation", with: @envoyer.user_reclamation_id
    click_on "Update Envoyer"

    assert_text "Envoyer was successfully updated"
    click_on "Back"
  end

  test "destroying a Envoyer" do
    visit envoyers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Envoyer was successfully destroyed"
  end
end

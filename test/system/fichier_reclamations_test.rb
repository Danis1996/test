require "application_system_test_case"

class FichierReclamationsTest < ApplicationSystemTestCase
  setup do
    @fichier_reclamation = fichier_reclamations(:one)
  end

  test "visiting the index" do
    visit fichier_reclamations_url
    assert_selector "h1", text: "Fichier Reclamations"
  end

  test "creating a Fichier reclamation" do
    visit fichier_reclamations_url
    click_on "New Fichier Reclamation"

    fill_in "Fichier", with: @fichier_reclamation.fichier_id
    fill_in "Reclamation", with: @fichier_reclamation.reclamation_id
    click_on "Create Fichier reclamation"

    assert_text "Fichier reclamation was successfully created"
    click_on "Back"
  end

  test "updating a Fichier reclamation" do
    visit fichier_reclamations_url
    click_on "Edit", match: :first

    fill_in "Fichier", with: @fichier_reclamation.fichier_id
    fill_in "Reclamation", with: @fichier_reclamation.reclamation_id
    click_on "Update Fichier reclamation"

    assert_text "Fichier reclamation was successfully updated"
    click_on "Back"
  end

  test "destroying a Fichier reclamation" do
    visit fichier_reclamations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fichier reclamation was successfully destroyed"
  end
end

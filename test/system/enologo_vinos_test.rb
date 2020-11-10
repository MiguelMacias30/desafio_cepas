require "application_system_test_case"

class EnologoVinosTest < ApplicationSystemTestCase
  setup do
    @enologo_vino = enologo_vinos(:one)
  end

  test "visiting the index" do
    visit enologo_vinos_url
    assert_selector "h1", text: "Enologo Vinos"
  end

  test "creating a Enologo vino" do
    visit enologo_vinos_url
    click_on "New Enologo Vino"

    fill_in "Enologo", with: @enologo_vino.enologo_id
    fill_in "Nota", with: @enologo_vino.nota
    fill_in "Vino", with: @enologo_vino.vino_id
    click_on "Create Enologo vino"

    assert_text "Enologo vino was successfully created"
    click_on "Back"
  end

  test "updating a Enologo vino" do
    visit enologo_vinos_url
    click_on "Edit", match: :first

    fill_in "Enologo", with: @enologo_vino.enologo_id
    fill_in "Nota", with: @enologo_vino.nota
    fill_in "Vino", with: @enologo_vino.vino_id
    click_on "Update Enologo vino"

    assert_text "Enologo vino was successfully updated"
    click_on "Back"
  end

  test "destroying a Enologo vino" do
    visit enologo_vinos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Enologo vino was successfully destroyed"
  end
end

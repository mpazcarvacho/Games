require "application_system_test_case"

class PartspicsTest < ApplicationSystemTestCase
  setup do
    @partspic = partspics(:one)
  end

  test "visiting the index" do
    visit partspics_url
    assert_selector "h1", text: "Partspics"
  end

  test "creating a Partspic" do
    visit partspics_url
    click_on "New Partspic"

    fill_in "Game", with: @partspic.game_id
    fill_in "Name", with: @partspic.name
    fill_in "Url", with: @partspic.url
    click_on "Create Partspic"

    assert_text "Partspic was successfully created"
    click_on "Back"
  end

  test "updating a Partspic" do
    visit partspics_url
    click_on "Edit", match: :first

    fill_in "Game", with: @partspic.game_id
    fill_in "Name", with: @partspic.name
    fill_in "Url", with: @partspic.url
    click_on "Update Partspic"

    assert_text "Partspic was successfully updated"
    click_on "Back"
  end

  test "destroying a Partspic" do
    visit partspics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Partspic was successfully destroyed"
  end
end

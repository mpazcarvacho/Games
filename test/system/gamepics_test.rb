require "application_system_test_case"

class GamepicsTest < ApplicationSystemTestCase
  setup do
    @gamepic = gamepics(:one)
  end

  test "visiting the index" do
    visit gamepics_url
    assert_selector "h1", text: "Gamepics"
  end

  test "creating a Gamepic" do
    visit gamepics_url
    click_on "New Gamepic"

    fill_in "Game", with: @gamepic.game_id
    fill_in "Name", with: @gamepic.name
    fill_in "Url", with: @gamepic.url
    click_on "Create Gamepic"

    assert_text "Gamepic was successfully created"
    click_on "Back"
  end

  test "updating a Gamepic" do
    visit gamepics_url
    click_on "Edit", match: :first

    fill_in "Game", with: @gamepic.game_id
    fill_in "Name", with: @gamepic.name
    fill_in "Url", with: @gamepic.url
    click_on "Update Gamepic"

    assert_text "Gamepic was successfully updated"
    click_on "Back"
  end

  test "destroying a Gamepic" do
    visit gamepics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gamepic was successfully destroyed"
  end
end

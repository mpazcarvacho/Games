require 'test_helper'

class GamepicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gamepic = gamepics(:one)
  end

  test "should get index" do
    get gamepics_url
    assert_response :success
  end

  test "should get new" do
    get new_gamepic_url
    assert_response :success
  end

  test "should create gamepic" do
    assert_difference('Gamepic.count') do
      post gamepics_url, params: { gamepic: { game_id: @gamepic.game_id, name: @gamepic.name, url: @gamepic.url } }
    end

    assert_redirected_to gamepic_url(Gamepic.last)
  end

  test "should show gamepic" do
    get gamepic_url(@gamepic)
    assert_response :success
  end

  test "should get edit" do
    get edit_gamepic_url(@gamepic)
    assert_response :success
  end

  test "should update gamepic" do
    patch gamepic_url(@gamepic), params: { gamepic: { game_id: @gamepic.game_id, name: @gamepic.name, url: @gamepic.url } }
    assert_redirected_to gamepic_url(@gamepic)
  end

  test "should destroy gamepic" do
    assert_difference('Gamepic.count', -1) do
      delete gamepic_url(@gamepic)
    end

    assert_redirected_to gamepics_url
  end
end

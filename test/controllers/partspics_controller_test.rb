require 'test_helper'

class PartspicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @partspic = partspics(:one)
  end

  test "should get index" do
    get partspics_url
    assert_response :success
  end

  test "should get new" do
    get new_partspic_url
    assert_response :success
  end

  test "should create partspic" do
    assert_difference('Partspic.count') do
      post partspics_url, params: { partspic: { game_id: @partspic.game_id, name: @partspic.name, url: @partspic.url } }
    end

    assert_redirected_to partspic_url(Partspic.last)
  end

  test "should show partspic" do
    get partspic_url(@partspic)
    assert_response :success
  end

  test "should get edit" do
    get edit_partspic_url(@partspic)
    assert_response :success
  end

  test "should update partspic" do
    patch partspic_url(@partspic), params: { partspic: { game_id: @partspic.game_id, name: @partspic.name, url: @partspic.url } }
    assert_redirected_to partspic_url(@partspic)
  end

  test "should destroy partspic" do
    assert_difference('Partspic.count', -1) do
      delete partspic_url(@partspic)
    end

    assert_redirected_to partspics_url
  end
end

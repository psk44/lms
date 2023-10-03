require "test_helper"

class SenseisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sensei = senseis(:one)
  end

  test "should get index" do
    get senseis_url
    assert_response :success
  end

  test "should get new" do
    get new_sensei_url
    assert_response :success
  end

  test "should create sensei" do
    assert_difference("Sensei.count") do
      post senseis_url, params: { sensei: { bio: @sensei.bio, first_name: @sensei.first_name, last_name: @sensei.last_name } }
    end

    assert_redirected_to sensei_url(Sensei.last)
  end

  test "should show sensei" do
    get sensei_url(@sensei)
    assert_response :success
  end

  test "should get edit" do
    get edit_sensei_url(@sensei)
    assert_response :success
  end

  test "should update sensei" do
    patch sensei_url(@sensei), params: { sensei: { bio: @sensei.bio, first_name: @sensei.first_name, last_name: @sensei.last_name } }
    assert_redirected_to sensei_url(@sensei)
  end

  test "should destroy sensei" do
    assert_difference("Sensei.count", -1) do
      delete sensei_url(@sensei)
    end

    assert_redirected_to senseis_url
  end
end

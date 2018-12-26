require 'test_helper'

class AngelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @angel = angels(:one)
  end

  test "should get index" do
    get angels_url
    assert_response :success
  end

  test "should get new" do
    get new_angel_url
    assert_response :success
  end

  test "should create angel" do
    assert_difference('Angel.count') do
      post angels_url, params: { angel: { name: @angel.name, wings: @angel.wings } }
    end

    assert_redirected_to angel_url(Angel.last)
  end

  test "should show angel" do
    get angel_url(@angel)
    assert_response :success
  end

  test "should get edit" do
    get edit_angel_url(@angel)
    assert_response :success
  end

  test "should update angel" do
    patch angel_url(@angel), params: { angel: { name: @angel.name, wings: @angel.wings } }
    assert_redirected_to angel_url(@angel)
  end

  test "should destroy angel" do
    assert_difference('Angel.count', -1) do
      delete angel_url(@angel)
    end

    assert_redirected_to angels_url
  end
end

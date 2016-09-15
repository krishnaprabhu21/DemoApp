require 'test_helper'

class PinmagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pinmage = pinmages(:one)
  end

  test "should get index" do
    get pinmages_url
    assert_response :success
  end

  test "should get new" do
    get new_pinmage_url
    assert_response :success
  end

  test "should create pinmage" do
    assert_difference('Pinmage.count') do
      post pinmages_url, params: { pinmage: { description: @pinmage.description, title: @pinmage.title } }
    end

    assert_redirected_to pinmage_url(Pinmage.last)
  end

  test "should show pinmage" do
    get pinmage_url(@pinmage)
    assert_response :success
  end

  test "should get edit" do
    get edit_pinmage_url(@pinmage)
    assert_response :success
  end

  test "should update pinmage" do
    patch pinmage_url(@pinmage), params: { pinmage: { description: @pinmage.description, title: @pinmage.title } }
    assert_redirected_to pinmage_url(@pinmage)
  end

  test "should destroy pinmage" do
    assert_difference('Pinmage.count', -1) do
      delete pinmage_url(@pinmage)
    end

    assert_redirected_to pinmages_url
  end
end

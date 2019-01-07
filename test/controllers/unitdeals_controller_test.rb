require 'test_helper'

class UnitdealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unitdeal = unitdeals(:one)
  end

  test "should get index" do
    get unitdeals_url
    assert_response :success
  end

  test "should get new" do
    get new_unitdeal_url
    assert_response :success
  end

  test "should create unitdeal" do
    assert_difference('Unitdeal.count') do
      post unitdeals_url, params: { unitdeal: { code: @unitdeal.code, name: @unitdeal.name } }
    end

    assert_redirected_to unitdeal_url(Unitdeal.last)
  end

  test "should show unitdeal" do
    get unitdeal_url(@unitdeal)
    assert_response :success
  end

  test "should get edit" do
    get edit_unitdeal_url(@unitdeal)
    assert_response :success
  end

  test "should update unitdeal" do
    patch unitdeal_url(@unitdeal), params: { unitdeal: { code: @unitdeal.code, name: @unitdeal.name } }
    assert_redirected_to unitdeal_url(@unitdeal)
  end

  test "should destroy unitdeal" do
    assert_difference('Unitdeal.count', -1) do
      delete unitdeal_url(@unitdeal)
    end

    assert_redirected_to unitdeals_url
  end
end

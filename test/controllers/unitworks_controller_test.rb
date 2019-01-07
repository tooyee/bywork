require 'test_helper'

class UnitworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unitwork = unitworks(:one)
  end

  test "should get index" do
    get unitworks_url
    assert_response :success
  end

  test "should get new" do
    get new_unitwork_url
    assert_response :success
  end

  test "should create unitwork" do
    assert_difference('Unitwork.count') do
      post unitworks_url, params: { unitwork: { code: @unitwork.code, name: @unitwork.name } }
    end

    assert_redirected_to unitwork_url(Unitwork.last)
  end

  test "should show unitwork" do
    get unitwork_url(@unitwork)
    assert_response :success
  end

  test "should get edit" do
    get edit_unitwork_url(@unitwork)
    assert_response :success
  end

  test "should update unitwork" do
    patch unitwork_url(@unitwork), params: { unitwork: { code: @unitwork.code, name: @unitwork.name } }
    assert_redirected_to unitwork_url(@unitwork)
  end

  test "should destroy unitwork" do
    assert_difference('Unitwork.count', -1) do
      delete unitwork_url(@unitwork)
    end

    assert_redirected_to unitworks_url
  end
end

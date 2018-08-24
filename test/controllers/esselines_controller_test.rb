require 'test_helper'

class EsselinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @esseline = esselines(:one)
  end

  test "should get index" do
    get esselines_url
    assert_response :success
  end

  test "should get new" do
    get new_esseline_url
    assert_response :success
  end

  test "should create esseline" do
    assert_difference('Esseline.count') do
      post esselines_url, params: { esseline: { code: @esseline.code, esse_id: @esseline.esse_id, esselinetype: @esseline.esselinetype, name: @esseline.name, remarks: @esseline.remarks } }
    end

    assert_redirected_to esseline_url(Esseline.last)
  end

  test "should show esseline" do
    get esseline_url(@esseline)
    assert_response :success
  end

  test "should get edit" do
    get edit_esseline_url(@esseline)
    assert_response :success
  end

  test "should update esseline" do
    patch esseline_url(@esseline), params: { esseline: { code: @esseline.code, esse_id: @esseline.esse_id, esselinetype: @esseline.esselinetype, name: @esseline.name, remarks: @esseline.remarks } }
    assert_redirected_to esseline_url(@esseline)
  end

  test "should destroy esseline" do
    assert_difference('Esseline.count', -1) do
      delete esseline_url(@esseline)
    end

    assert_redirected_to esselines_url
  end
end

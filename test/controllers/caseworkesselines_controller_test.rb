require 'test_helper'

class CaseworkesselinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caseworkesseline = caseworkesselines(:one)
  end

  test "should get index" do
    get caseworkesselines_url
    assert_response :success
  end

  test "should get new" do
    get new_caseworkesseline_url
    assert_response :success
  end

  test "should create caseworkesseline" do
    assert_difference('Caseworkesseline.count') do
      post caseworkesselines_url, params: { caseworkesseline: { caseitem_id: @caseworkesseline.caseitem_id, casework_id: @caseworkesseline.casework_id, esse_id: @caseworkesseline.esse_id, esseline_id: @caseworkesseline.esseline_id, esselinecode: @caseworkesseline.esselinecode, esselinename: @caseworkesseline.esselinename, fromwhscode: @caseworkesseline.fromwhscode, quantity: @caseworkesseline.quantity, remarks: @caseworkesseline.remarks, status: @caseworkesseline.status, towhscode: @caseworkesseline.towhscode, unit: @caseworkesseline.unit } }
    end

    assert_redirected_to caseworkesseline_url(Caseworkesseline.last)
  end

  test "should show caseworkesseline" do
    get caseworkesseline_url(@caseworkesseline)
    assert_response :success
  end

  test "should get edit" do
    get edit_caseworkesseline_url(@caseworkesseline)
    assert_response :success
  end

  test "should update caseworkesseline" do
    patch caseworkesseline_url(@caseworkesseline), params: { caseworkesseline: { caseitem_id: @caseworkesseline.caseitem_id, casework_id: @caseworkesseline.casework_id, esse_id: @caseworkesseline.esse_id, esseline_id: @caseworkesseline.esseline_id, esselinecode: @caseworkesseline.esselinecode, esselinename: @caseworkesseline.esselinename, fromwhscode: @caseworkesseline.fromwhscode, quantity: @caseworkesseline.quantity, remarks: @caseworkesseline.remarks, status: @caseworkesseline.status, towhscode: @caseworkesseline.towhscode, unit: @caseworkesseline.unit } }
    assert_redirected_to caseworkesseline_url(@caseworkesseline)
  end

  test "should destroy caseworkesseline" do
    assert_difference('Caseworkesseline.count', -1) do
      delete caseworkesseline_url(@caseworkesseline)
    end

    assert_redirected_to caseworkesselines_url
  end
end

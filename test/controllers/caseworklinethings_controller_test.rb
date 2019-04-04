require 'test_helper'

class CaseworklinethingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caseworklinething = caseworklinethings(:one)
  end

  test "should get index" do
    get caseworklinethings_url
    assert_response :success
  end

  test "should get new" do
    get new_caseworklinething_url
    assert_response :success
  end

  test "should create caseworklinething" do
    assert_difference('Caseworklinething.count') do
      post caseworklinethings_url, params: { caseworklinething: { begindate: @caseworklinething.begindate, caseitem_id: @caseworklinething.caseitem_id, casework_id: @caseworklinething.casework_id, enddate: @caseworklinething.enddate, fromwhscode: @caseworklinething.fromwhscode, kind_id: @caseworklinething.kind_id, quantity: @caseworklinething.quantity, remarks: @caseworklinething.remarks, status: @caseworklinething.status, thing_id: @caseworklinething.thing_id, thingcode: @caseworklinething.thingcode, thingname: @caseworklinething.thingname, towhscode: @caseworklinething.towhscode, unit: @caseworklinething.unit } }
    end

    assert_redirected_to caseworklinething_url(Caseworklinething.last)
  end

  test "should show caseworklinething" do
    get caseworklinething_url(@caseworklinething)
    assert_response :success
  end

  test "should get edit" do
    get edit_caseworklinething_url(@caseworklinething)
    assert_response :success
  end

  test "should update caseworklinething" do
    patch caseworklinething_url(@caseworklinething), params: { caseworklinething: { begindate: @caseworklinething.begindate, caseitem_id: @caseworklinething.caseitem_id, casework_id: @caseworklinething.casework_id, enddate: @caseworklinething.enddate, fromwhscode: @caseworklinething.fromwhscode, kind_id: @caseworklinething.kind_id, quantity: @caseworklinething.quantity, remarks: @caseworklinething.remarks, status: @caseworklinething.status, thing_id: @caseworklinething.thing_id, thingcode: @caseworklinething.thingcode, thingname: @caseworklinething.thingname, towhscode: @caseworklinething.towhscode, unit: @caseworklinething.unit } }
    assert_redirected_to caseworklinething_url(@caseworklinething)
  end

  test "should destroy caseworklinething" do
    assert_difference('Caseworklinething.count', -1) do
      delete caseworklinething_url(@caseworklinething)
    end

    assert_redirected_to caseworklinethings_url
  end
end

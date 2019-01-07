require 'test_helper'

class CaseworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @casework = caseworks(:one)
  end

  test "should get index" do
    get caseworks_url
    assert_response :success
  end

  test "should get new" do
    get new_casework_url
    assert_response :success
  end

  test "should create casework" do
    assert_difference('Casework.count') do
      post caseworks_url, params: { casework: { buycode: @casework.buycode, buyid: @casework.buyid, buyname: @casework.buyname, caseflowwork_id: @casework.caseflowwork_id, code: @casework.code, name: @casework.name, remarks: @casework.remarks, salescode: @casework.salescode, salesid: @casework.salesid, salesname: @casework.salesname, sellcode: @casework.sellcode, sellid: @casework.sellid, sellname: @casework.sellname, status: @casework.status } }
    end

    assert_redirected_to casework_url(Casework.last)
  end

  test "should show casework" do
    get casework_url(@casework)
    assert_response :success
  end

  test "should get edit" do
    get edit_casework_url(@casework)
    assert_response :success
  end

  test "should update casework" do
    patch casework_url(@casework), params: { casework: { buycode: @casework.buycode, buyid: @casework.buyid, buyname: @casework.buyname, caseflowwork_id: @casework.caseflowwork_id, code: @casework.code, name: @casework.name, remarks: @casework.remarks, salescode: @casework.salescode, salesid: @casework.salesid, salesname: @casework.salesname, sellcode: @casework.sellcode, sellid: @casework.sellid, sellname: @casework.sellname, status: @casework.status } }
    assert_redirected_to casework_url(@casework)
  end

  test "should destroy casework" do
    assert_difference('Casework.count', -1) do
      delete casework_url(@casework)
    end

    assert_redirected_to caseworks_url
  end
end

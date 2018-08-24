require 'test_helper'

class CaseitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caseitem = caseitems(:one)
  end

  test "should get index" do
    get caseitems_url
    assert_response :success
  end

  test "should get new" do
    get new_caseitem_url
    assert_response :success
  end

  test "should create caseitem" do
    assert_difference('Caseitem.count') do
      post caseitems_url, params: { caseitem: { code: @caseitem.code, flowitem_id: @caseitem.flowitem_id, name: @caseitem.name, remarks: @caseitem.remarks, status: @caseitem.status } }
    end

    assert_redirected_to caseitem_url(Caseitem.last)
  end

  test "should show caseitem" do
    get caseitem_url(@caseitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_caseitem_url(@caseitem)
    assert_response :success
  end

  test "should update caseitem" do
    patch caseitem_url(@caseitem), params: { caseitem: { code: @caseitem.code, flowitem_id: @caseitem.flowitem_id, name: @caseitem.name, remarks: @caseitem.remarks, status: @caseitem.status } }
    assert_redirected_to caseitem_url(@caseitem)
  end

  test "should destroy caseitem" do
    assert_difference('Caseitem.count', -1) do
      delete caseitem_url(@caseitem)
    end

    assert_redirected_to caseitems_url
  end
end

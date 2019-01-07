require 'test_helper'

class CaseflowworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caseflowwork = caseflowworks(:one)
  end

  test "should get index" do
    get caseflowworks_url
    assert_response :success
  end

  test "should get new" do
    get new_caseflowwork_url
    assert_response :success
  end

  test "should create caseflowwork" do
    assert_difference('Caseflowwork.count') do
      post caseflowworks_url, params: { caseflowwork: { accouttype: @caseflowwork.accouttype, afterunitwork_id: @caseflowwork.afterunitwork_id, beforeunitwork_id: @caseflowwork.beforeunitwork_id, casedeal_id: @caseflowwork.casedeal_id, code: @caseflowwork.code, contenttype: @caseflowwork.contenttype, copyresourcestype: @caseflowwork.copyresourcestype, floworderid: @caseflowwork.floworderid, flowtype: @caseflowwork.flowtype, name: @caseflowwork.name, resourcestype: @caseflowwork.resourcestype, stockaccounttype: @caseflowwork.stockaccounttype, subdealtype: @caseflowwork.subdealtype, vouchertemplatetype: @caseflowwork.vouchertemplatetype } }
    end

    assert_redirected_to caseflowwork_url(Caseflowwork.last)
  end

  test "should show caseflowwork" do
    get caseflowwork_url(@caseflowwork)
    assert_response :success
  end

  test "should get edit" do
    get edit_caseflowwork_url(@caseflowwork)
    assert_response :success
  end

  test "should update caseflowwork" do
    patch caseflowwork_url(@caseflowwork), params: { caseflowwork: { accouttype: @caseflowwork.accouttype, afterunitwork_id: @caseflowwork.afterunitwork_id, beforeunitwork_id: @caseflowwork.beforeunitwork_id, casedeal_id: @caseflowwork.casedeal_id, code: @caseflowwork.code, contenttype: @caseflowwork.contenttype, copyresourcestype: @caseflowwork.copyresourcestype, floworderid: @caseflowwork.floworderid, flowtype: @caseflowwork.flowtype, name: @caseflowwork.name, resourcestype: @caseflowwork.resourcestype, stockaccounttype: @caseflowwork.stockaccounttype, subdealtype: @caseflowwork.subdealtype, vouchertemplatetype: @caseflowwork.vouchertemplatetype } }
    assert_redirected_to caseflowwork_url(@caseflowwork)
  end

  test "should destroy caseflowwork" do
    assert_difference('Caseflowwork.count', -1) do
      delete caseflowwork_url(@caseflowwork)
    end

    assert_redirected_to caseflowworks_url
  end
end

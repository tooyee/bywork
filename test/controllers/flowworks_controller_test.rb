require 'test_helper'

class FlowworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flowwork = flowworks(:one)
  end

  test "should get index" do
    get flowworks_url
    assert_response :success
  end

  test "should get new" do
    get new_flowwork_url
    assert_response :success
  end

  test "should create flowwork" do
    assert_difference('Flowwork.count') do
      post flowworks_url, params: { flowwork: { accouttype: @flowwork.accouttype, afterunitwork_id: @flowwork.afterunitwork_id, beforeunitwork_id: @flowwork.beforeunitwork_id, contenttype: @flowwork.contenttype, copyresourcestype: @flowwork.copyresourcestype, flowdeal_id: @flowwork.flowdeal_id, floworderid: @flowwork.floworderid, flowtype: @flowwork.flowtype, resourcestype: @flowwork.resourcestype, stockaccounttype: @flowwork.stockaccounttype, subdealtype: @flowwork.subdealtype, unitwork_id: @flowwork.unitwork_id, vouchertemplatetype: @flowwork.vouchertemplatetype } }
    end

    assert_redirected_to flowwork_url(Flowwork.last)
  end

  test "should show flowwork" do
    get flowwork_url(@flowwork)
    assert_response :success
  end

  test "should get edit" do
    get edit_flowwork_url(@flowwork)
    assert_response :success
  end

  test "should update flowwork" do
    patch flowwork_url(@flowwork), params: { flowwork: { accouttype: @flowwork.accouttype, afterunitwork_id: @flowwork.afterunitwork_id, beforeunitwork_id: @flowwork.beforeunitwork_id, contenttype: @flowwork.contenttype, copyresourcestype: @flowwork.copyresourcestype, flowdeal_id: @flowwork.flowdeal_id, floworderid: @flowwork.floworderid, flowtype: @flowwork.flowtype, resourcestype: @flowwork.resourcestype, stockaccounttype: @flowwork.stockaccounttype, subdealtype: @flowwork.subdealtype, unitwork_id: @flowwork.unitwork_id, vouchertemplatetype: @flowwork.vouchertemplatetype } }
    assert_redirected_to flowwork_url(@flowwork)
  end

  test "should destroy flowwork" do
    assert_difference('Flowwork.count', -1) do
      delete flowwork_url(@flowwork)
    end

    assert_redirected_to flowworks_url
  end
end

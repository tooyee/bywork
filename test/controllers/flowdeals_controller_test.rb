require 'test_helper'

class FlowdealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flowdeal = flowdeals(:one)
  end

  test "should get index" do
    get flowdeals_url
    assert_response :success
  end

  test "should get new" do
    get new_flowdeal_url
    assert_response :success
  end

  test "should create flowdeal" do
    assert_difference('Flowdeal.count') do
      post flowdeals_url, params: { flowdeal: { dealtype: @flowdeal.dealtype, flowitem_id: @flowdeal.flowitem_id, floworderid: @flowdeal.floworderid, flowtype: @flowdeal.flowtype, unitdeal_id: @flowdeal.unitdeal_id } }
    end

    assert_redirected_to flowdeal_url(Flowdeal.last)
  end

  test "should show flowdeal" do
    get flowdeal_url(@flowdeal)
    assert_response :success
  end

  test "should get edit" do
    get edit_flowdeal_url(@flowdeal)
    assert_response :success
  end

  test "should update flowdeal" do
    patch flowdeal_url(@flowdeal), params: { flowdeal: { dealtype: @flowdeal.dealtype, flowitem_id: @flowdeal.flowitem_id, floworderid: @flowdeal.floworderid, flowtype: @flowdeal.flowtype, unitdeal_id: @flowdeal.unitdeal_id } }
    assert_redirected_to flowdeal_url(@flowdeal)
  end

  test "should destroy flowdeal" do
    assert_difference('Flowdeal.count', -1) do
      delete flowdeal_url(@flowdeal)
    end

    assert_redirected_to flowdeals_url
  end
end

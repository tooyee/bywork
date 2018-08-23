require 'test_helper'

class FlowitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flowitem = flowitems(:one)
  end

  test "should get index" do
    get flowitems_url
    assert_response :success
  end

  test "should get new" do
    get new_flowitem_url
    assert_response :success
  end

  test "should create flowitem" do
    assert_difference('Flowitem.count') do
      post flowitems_url, params: { flowitem: { code: @flowitem.code, name: @flowitem.name, remarks: @flowitem.remarks, unititem_id: @flowitem.unititem_id } }
    end

    assert_redirected_to flowitem_url(Flowitem.last)
  end

  test "should show flowitem" do
    get flowitem_url(@flowitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_flowitem_url(@flowitem)
    assert_response :success
  end

  test "should update flowitem" do
    patch flowitem_url(@flowitem), params: { flowitem: { code: @flowitem.code, name: @flowitem.name, remarks: @flowitem.remarks, unititem_id: @flowitem.unititem_id } }
    assert_redirected_to flowitem_url(@flowitem)
  end

  test "should destroy flowitem" do
    assert_difference('Flowitem.count', -1) do
      delete flowitem_url(@flowitem)
    end

    assert_redirected_to flowitems_url
  end
end

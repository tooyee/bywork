require 'test_helper'

class DutyitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dutyitem = dutyitems(:one)
  end

  test "should get index" do
    get dutyitems_url
    assert_response :success
  end

  test "should get new" do
    get new_dutyitem_url
    assert_response :success
  end

  test "should create dutyitem" do
    assert_difference('Dutyitem.count') do
      post dutyitems_url, params: { dutyitem: { addtype: @dutyitem.addtype, deltype: @dutyitem.deltype, flowitem_id: @dutyitem.flowitem_id, role_id: @dutyitem.role_id, seltype: @dutyitem.seltype, updtype: @dutyitem.updtype } }
    end

    assert_redirected_to dutyitem_url(Dutyitem.last)
  end

  test "should show dutyitem" do
    get dutyitem_url(@dutyitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_dutyitem_url(@dutyitem)
    assert_response :success
  end

  test "should update dutyitem" do
    patch dutyitem_url(@dutyitem), params: { dutyitem: { addtype: @dutyitem.addtype, deltype: @dutyitem.deltype, flowitem_id: @dutyitem.flowitem_id, role_id: @dutyitem.role_id, seltype: @dutyitem.seltype, updtype: @dutyitem.updtype } }
    assert_redirected_to dutyitem_url(@dutyitem)
  end

  test "should destroy dutyitem" do
    assert_difference('Dutyitem.count', -1) do
      delete dutyitem_url(@dutyitem)
    end

    assert_redirected_to dutyitems_url
  end
end

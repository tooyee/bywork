require 'test_helper'

class UnititemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unititem = unititems(:one)
  end

  test "should get index" do
    get unititems_url
    assert_response :success
  end

  test "should get new" do
    get new_unititem_url
    assert_response :success
  end

  test "should create unititem" do
    assert_difference('Unititem.count') do
      post unititems_url, params: { unititem: { code: @unititem.code, name: @unititem.name } }
    end

    assert_redirected_to unititem_url(Unititem.last)
  end

  test "should show unititem" do
    get unititem_url(@unititem)
    assert_response :success
  end

  test "should get edit" do
    get edit_unititem_url(@unititem)
    assert_response :success
  end

  test "should update unititem" do
    patch unititem_url(@unititem), params: { unititem: { code: @unititem.code, name: @unititem.name } }
    assert_redirected_to unititem_url(@unititem)
  end

  test "should destroy unititem" do
    assert_difference('Unititem.count', -1) do
      delete unititem_url(@unititem)
    end

    assert_redirected_to unititems_url
  end
end

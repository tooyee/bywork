require 'test_helper'

class DutydealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dutydeal = dutydeals(:one)
  end

  test "should get index" do
    get dutydeals_url
    assert_response :success
  end

  test "should get new" do
    get new_dutydeal_url
    assert_response :success
  end

  test "should create dutydeal" do
    assert_difference('Dutydeal.count') do
      post dutydeals_url, params: { dutydeal: { addtype: @dutydeal.addtype, deltype: @dutydeal.deltype, dutyitem_id: @dutydeal.dutyitem_id, flowdeal_id: @dutydeal.flowdeal_id, seltype: @dutydeal.seltype, updtype: @dutydeal.updtype } }
    end

    assert_redirected_to dutydeal_url(Dutydeal.last)
  end

  test "should show dutydeal" do
    get dutydeal_url(@dutydeal)
    assert_response :success
  end

  test "should get edit" do
    get edit_dutydeal_url(@dutydeal)
    assert_response :success
  end

  test "should update dutydeal" do
    patch dutydeal_url(@dutydeal), params: { dutydeal: { addtype: @dutydeal.addtype, deltype: @dutydeal.deltype, dutyitem_id: @dutydeal.dutyitem_id, flowdeal_id: @dutydeal.flowdeal_id, seltype: @dutydeal.seltype, updtype: @dutydeal.updtype } }
    assert_redirected_to dutydeal_url(@dutydeal)
  end

  test "should destroy dutydeal" do
    assert_difference('Dutydeal.count', -1) do
      delete dutydeal_url(@dutydeal)
    end

    assert_redirected_to dutydeals_url
  end
end

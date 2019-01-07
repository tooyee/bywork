require 'test_helper'

class DutyworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dutywork = dutyworks(:one)
  end

  test "should get index" do
    get dutyworks_url
    assert_response :success
  end

  test "should get new" do
    get new_dutywork_url
    assert_response :success
  end

  test "should create dutywork" do
    assert_difference('Dutywork.count') do
      post dutyworks_url, params: { dutywork: { addtype: @dutywork.addtype, deltype: @dutywork.deltype, dutydeal_id: @dutywork.dutydeal_id, flowwork_id: @dutywork.flowwork_id, seltype: @dutywork.seltype, updtype: @dutywork.updtype } }
    end

    assert_redirected_to dutywork_url(Dutywork.last)
  end

  test "should show dutywork" do
    get dutywork_url(@dutywork)
    assert_response :success
  end

  test "should get edit" do
    get edit_dutywork_url(@dutywork)
    assert_response :success
  end

  test "should update dutywork" do
    patch dutywork_url(@dutywork), params: { dutywork: { addtype: @dutywork.addtype, deltype: @dutywork.deltype, dutydeal_id: @dutywork.dutydeal_id, flowwork_id: @dutywork.flowwork_id, seltype: @dutywork.seltype, updtype: @dutywork.updtype } }
    assert_redirected_to dutywork_url(@dutywork)
  end

  test "should destroy dutywork" do
    assert_difference('Dutywork.count', -1) do
      delete dutywork_url(@dutywork)
    end

    assert_redirected_to dutyworks_url
  end
end

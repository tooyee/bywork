require 'test_helper'

class CasedealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @casedeal = casedeals(:one)
  end

  test "should get index" do
    get casedeals_url
    assert_response :success
  end

  test "should get new" do
    get new_casedeal_url
    assert_response :success
  end

  test "should create casedeal" do
    assert_difference('Casedeal.count') do
      post casedeals_url, params: { casedeal: { caseitem_id: @casedeal.caseitem_id, dealtype: @casedeal.dealtype, floworderid: @casedeal.floworderid, flowtype: @casedeal.flowtype, name: @casedeal.name } }
    end

    assert_redirected_to casedeal_url(Casedeal.last)
  end

  test "should show casedeal" do
    get casedeal_url(@casedeal)
    assert_response :success
  end

  test "should get edit" do
    get edit_casedeal_url(@casedeal)
    assert_response :success
  end

  test "should update casedeal" do
    patch casedeal_url(@casedeal), params: { casedeal: { caseitem_id: @casedeal.caseitem_id, dealtype: @casedeal.dealtype, floworderid: @casedeal.floworderid, flowtype: @casedeal.flowtype, name: @casedeal.name } }
    assert_redirected_to casedeal_url(@casedeal)
  end

  test "should destroy casedeal" do
    assert_difference('Casedeal.count', -1) do
      delete casedeal_url(@casedeal)
    end

    assert_redirected_to casedeals_url
  end
end

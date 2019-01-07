require 'test_helper'

class CaseworklinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caseworkline = caseworklines(:one)
  end

  test "should get index" do
    get caseworklines_url
    assert_response :success
  end

  test "should get new" do
    get new_caseworkline_url
    assert_response :success
  end

  test "should create caseworkline" do
    assert_difference('Caseworkline.count') do
      post caseworklines_url, params: { caseworkline: { baseid: @caseworkline.baseid, caseitem_id: @caseworkline.caseitem_id, casework_id: @caseworkline.casework_id, cost: @caseworkline.cost, esse_id: @caseworkline.esse_id, openqty: @caseworkline.openqty, price: @caseworkline.price, quantity: @caseworkline.quantity, status: @caseworkline.status, vatgroup: @caseworkline.vatgroup, whscode: @caseworkline.whscode } }
    end

    assert_redirected_to caseworkline_url(Caseworkline.last)
  end

  test "should show caseworkline" do
    get caseworkline_url(@caseworkline)
    assert_response :success
  end

  test "should get edit" do
    get edit_caseworkline_url(@caseworkline)
    assert_response :success
  end

  test "should update caseworkline" do
    patch caseworkline_url(@caseworkline), params: { caseworkline: { baseid: @caseworkline.baseid, caseitem_id: @caseworkline.caseitem_id, casework_id: @caseworkline.casework_id, cost: @caseworkline.cost, esse_id: @caseworkline.esse_id, openqty: @caseworkline.openqty, price: @caseworkline.price, quantity: @caseworkline.quantity, status: @caseworkline.status, vatgroup: @caseworkline.vatgroup, whscode: @caseworkline.whscode } }
    assert_redirected_to caseworkline_url(@caseworkline)
  end

  test "should destroy caseworkline" do
    assert_difference('Caseworkline.count', -1) do
      delete caseworkline_url(@caseworkline)
    end

    assert_redirected_to caseworklines_url
  end
end

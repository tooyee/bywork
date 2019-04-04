require 'test_helper'

class CaseworklinekindsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caseworklinekind = caseworklinekinds(:one)
  end

  test "should get index" do
    get caseworklinekinds_url
    assert_response :success
  end

  test "should get new" do
    get new_caseworklinekind_url
    assert_response :success
  end

  test "should create caseworklinekind" do
    assert_difference('Caseworklinekind.count') do
      post caseworklinekinds_url, params: { caseworklinekind: { baseid: @caseworklinekind.baseid, caseitem_id: @caseworklinekind.caseitem_id, casework_id: @caseworklinekind.casework_id, cost: @caseworklinekind.cost, kind_id: @caseworklinekind.kind_id, openqty: @caseworklinekind.openqty, price: @caseworklinekind.price, quantity: @caseworklinekind.quantity, status: @caseworklinekind.status, vatgroup: @caseworklinekind.vatgroup, whscode: @caseworklinekind.whscode } }
    end

    assert_redirected_to caseworklinekind_url(Caseworklinekind.last)
  end

  test "should show caseworklinekind" do
    get caseworklinekind_url(@caseworklinekind)
    assert_response :success
  end

  test "should get edit" do
    get edit_caseworklinekind_url(@caseworklinekind)
    assert_response :success
  end

  test "should update caseworklinekind" do
    patch caseworklinekind_url(@caseworklinekind), params: { caseworklinekind: { baseid: @caseworklinekind.baseid, caseitem_id: @caseworklinekind.caseitem_id, casework_id: @caseworklinekind.casework_id, cost: @caseworklinekind.cost, kind_id: @caseworklinekind.kind_id, openqty: @caseworklinekind.openqty, price: @caseworklinekind.price, quantity: @caseworklinekind.quantity, status: @caseworklinekind.status, vatgroup: @caseworklinekind.vatgroup, whscode: @caseworklinekind.whscode } }
    assert_redirected_to caseworklinekind_url(@caseworklinekind)
  end

  test "should destroy caseworklinekind" do
    assert_difference('Caseworklinekind.count', -1) do
      delete caseworklinekind_url(@caseworklinekind)
    end

    assert_redirected_to caseworklinekinds_url
  end
end

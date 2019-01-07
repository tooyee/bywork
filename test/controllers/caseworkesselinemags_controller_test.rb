require 'test_helper'

class CaseworkesselinemagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caseworkesselinemag = caseworkesselinemags(:one)
  end

  test "should get index" do
    get caseworkesselinemags_url
    assert_response :success
  end

  test "should get new" do
    get new_caseworkesselinemag_url
    assert_response :success
  end

  test "should create caseworkesselinemag" do
    assert_difference('Caseworkesselinemag.count') do
      post caseworkesselinemags_url, params: { caseworkesselinemag: { casework_id: @caseworkesselinemag.casework_id, code: @caseworkesselinemag.code, esse_id: @caseworkesselinemag.esse_id, esselinetype: @caseworkesselinemag.esselinetype, name: @caseworkesselinemag.name, remarks: @caseworkesselinemag.remarks, status: @caseworkesselinemag.status } }
    end

    assert_redirected_to caseworkesselinemag_url(Caseworkesselinemag.last)
  end

  test "should show caseworkesselinemag" do
    get caseworkesselinemag_url(@caseworkesselinemag)
    assert_response :success
  end

  test "should get edit" do
    get edit_caseworkesselinemag_url(@caseworkesselinemag)
    assert_response :success
  end

  test "should update caseworkesselinemag" do
    patch caseworkesselinemag_url(@caseworkesselinemag), params: { caseworkesselinemag: { casework_id: @caseworkesselinemag.casework_id, code: @caseworkesselinemag.code, esse_id: @caseworkesselinemag.esse_id, esselinetype: @caseworkesselinemag.esselinetype, name: @caseworkesselinemag.name, remarks: @caseworkesselinemag.remarks, status: @caseworkesselinemag.status } }
    assert_redirected_to caseworkesselinemag_url(@caseworkesselinemag)
  end

  test "should destroy caseworkesselinemag" do
    assert_difference('Caseworkesselinemag.count', -1) do
      delete caseworkesselinemag_url(@caseworkesselinemag)
    end

    assert_redirected_to caseworkesselinemags_url
  end
end

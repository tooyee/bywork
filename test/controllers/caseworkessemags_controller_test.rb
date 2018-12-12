require 'test_helper'

class CaseworkessemagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caseworkessemag = caseworkessemags(:one)
  end

  test "should get index" do
    get caseworkessemags_url
    assert_response :success
  end

  test "should get new" do
    get new_caseworkessemag_url
    assert_response :success
  end

  test "should create caseworkessemag" do
    assert_difference('Caseworkessemag.count') do
      post caseworkessemags_url, params: { caseworkessemag: { casework_id: @caseworkessemag.casework_id, code: @caseworkessemag.code, essetype: @caseworkessemag.essetype, name: @caseworkessemag.name, status: @caseworkessemag.status } }
    end

    assert_redirected_to caseworkessemag_url(Caseworkessemag.last)
  end

  test "should show caseworkessemag" do
    get caseworkessemag_url(@caseworkessemag)
    assert_response :success
  end

  test "should get edit" do
    get edit_caseworkessemag_url(@caseworkessemag)
    assert_response :success
  end

  test "should update caseworkessemag" do
    patch caseworkessemag_url(@caseworkessemag), params: { caseworkessemag: { casework_id: @caseworkessemag.casework_id, code: @caseworkessemag.code, essetype: @caseworkessemag.essetype, name: @caseworkessemag.name, status: @caseworkessemag.status } }
    assert_redirected_to caseworkessemag_url(@caseworkessemag)
  end

  test "should destroy caseworkessemag" do
    assert_difference('Caseworkessemag.count', -1) do
      delete caseworkessemag_url(@caseworkessemag)
    end

    assert_redirected_to caseworkessemags_url
  end
end

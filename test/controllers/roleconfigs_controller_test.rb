require 'test_helper'

class RoleconfigsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roleconfig = roleconfigs(:one)
  end

  test "should get index" do
    get roleconfigs_url
    assert_response :success
  end

  test "should get new" do
    get new_roleconfig_url
    assert_response :success
  end

  test "should create roleconfig" do
    assert_difference('Roleconfig.count') do
      post roleconfigs_url, params: { roleconfig: { role_id: @roleconfig.role_id, user_id: @roleconfig.user_id } }
    end

    assert_redirected_to roleconfig_url(Roleconfig.last)
  end

  test "should show roleconfig" do
    get roleconfig_url(@roleconfig)
    assert_response :success
  end

  test "should get edit" do
    get edit_roleconfig_url(@roleconfig)
    assert_response :success
  end

  test "should update roleconfig" do
    patch roleconfig_url(@roleconfig), params: { roleconfig: { role_id: @roleconfig.role_id, user_id: @roleconfig.user_id } }
    assert_redirected_to roleconfig_url(@roleconfig)
  end

  test "should destroy roleconfig" do
    assert_difference('Roleconfig.count', -1) do
      delete roleconfig_url(@roleconfig)
    end

    assert_redirected_to roleconfigs_url
  end
end

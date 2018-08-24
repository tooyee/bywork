require 'test_helper'

class EssesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ess = esses(:one)
  end

  test "should get index" do
    get esses_url
    assert_response :success
  end

  test "should get new" do
    get new_ess_url
    assert_response :success
  end

  test "should create ess" do
    assert_difference('Esse.count') do
      post esses_url, params: { ess: { code: @ess.code, essetype: @ess.essetype, name: @ess.name } }
    end

    assert_redirected_to ess_url(Esse.last)
  end

  test "should show ess" do
    get ess_url(@ess)
    assert_response :success
  end

  test "should get edit" do
    get edit_ess_url(@ess)
    assert_response :success
  end

  test "should update ess" do
    patch ess_url(@ess), params: { ess: { code: @ess.code, essetype: @ess.essetype, name: @ess.name } }
    assert_redirected_to ess_url(@ess)
  end

  test "should destroy ess" do
    assert_difference('Esse.count', -1) do
      delete ess_url(@ess)
    end

    assert_redirected_to esses_url
  end
end

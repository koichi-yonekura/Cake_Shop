require 'test_helper'

class Public::EndUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_end_users_show_url
    assert_response :success
  end

  test "should get edit" do
    get public_end_users_edit_url
    assert_response :success
  end

  test "should get update" do
    get public_end_users_update_url
    assert_response :success
  end

  test "should get comfirm" do
    get public_end_users_comfirm_url
    assert_response :success
  end

  test "should get withdrawal" do
    get public_end_users_withdrawal_url
    assert_response :success
  end

end

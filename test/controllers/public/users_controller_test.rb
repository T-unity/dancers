require "test_helper"

class Public::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    # get public_users_new_url
    get signup_path
    assert_response :success
  end
end

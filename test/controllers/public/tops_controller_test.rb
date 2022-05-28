require "test_helper"

class Public::TopsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get public_tops_top_url
    assert_response :success
  end
end

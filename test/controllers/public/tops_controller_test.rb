require "test_helper"

class Public::TopsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    # get public_tops_top_url
    # ドキュメントルートから200OKが返却される事を確認。
    get root_path
    assert_response :success
  end
end

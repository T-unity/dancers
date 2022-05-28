require "test_helper"

class TopControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    # top_index_urlがGETリクエストを受け付ける事を意味する。
    get top_index_url
    # 200OKを期待する
    assert_response :success
  end
end

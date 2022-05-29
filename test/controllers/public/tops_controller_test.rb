require "test_helper"

class Public::TopsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @app_name = 'Dancers'
  end

  # ルートをチェック
  test "should get top" do
    # get public_tops_top_url
    get root_path
    # Expect 200OK to be returned from the top page.
    assert_response :success
    # assert_select：特定のHTMLタグが存在するかチェック
    # assert_select "title：タイトル内の文字列をチェック
    assert_select "title", @app_name
  end

  # aboutページをチェック
  test 'should get about' do
    get about_path
    # 200OKが帰ってくるか。
    assert_response :success
    # assert_select "title", "About - #{@app_name}"
  end

end

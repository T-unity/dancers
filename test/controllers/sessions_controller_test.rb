require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest

  # フラッシュメッセージの動作が正しい事を確認
  test "login with  invalid information" do
    get login_path
    assert_template 'sessions/new'
    post login_path, params: { email: '', password: '' }
    assert_template 'sessions/new'
    # 無効な情報をPOSTしているため、フラッシュメッセージが表示される事を確認
    assert_not flash.empty?
    get root_path
    # 別のページに移動すると、フラッシュメッセージがempty=trueになる事を確認
    assert flash.empty?
  end
end

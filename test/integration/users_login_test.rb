require "test_helper"

class UsersLoginTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  # def setup
  #   @user = users(:michael)
  # end

  # test 'login with valid information' do
  #   # ログインURLから200OKが返却される事を確認
  #   get login_path
  #   # ログインURLにパラメータを付与してPOSTリクエストを送信
  #   post login_path, params: {
  #     email: @user.email,
  #     password: 'password'
  #   }

  #   assert_redirect_to @user
  #   # https://apidock.com/rails/ActionController/Integration/Session/follow_redirect%21
  #   follow_redirect!
  #   assert_template 'public/users/show'
  #   assert_select 'a[href=?]', login_path, count: 0
  #   assert_select 'a[href=?]', loguot_path
  #   assert_select 'a[href=?]', user_path(@user)
  # end

end

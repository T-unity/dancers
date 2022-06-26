require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test 'invalid signup' do
    get signup_path
    # 無効なデータを登録して、登録に失敗
    # assert_no_difference が若干複雑なので要確認
    assert_no_difference 'Public::User.count' do
      post signup_path, params: { public_user: {
        name: '',
        email: 'hoge@ivalid',
        pasword: 'hoge',
        password_confirmation: 'fuga'
      } }
    end
    # 更新に失敗後、サインアップ画面が際表示される
    assert_template 'public/users/new'
  end

  test 'valid signup' do
    get signup_path
    assert_difference 'Public::User.count' do
      post signup_path, params: { public_user: {
        name: 'Yusuke Tanimoto',
        email: 'yusuketanimoto@example.com',
        password: 'tyusuke8012',
        password_confirmation: 'tyusuke8012'
      } }
    end
    follow_redirect!
    assert_template 'public/users/show'
  end

end

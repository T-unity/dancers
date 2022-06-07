require "test_helper"

class Public::UserTest < ActiveSupport::TestCase

  def setup
    @user = Public::User.new(name: 'T-unity', email: 'tea-uni@example.com')
  end

  test 'should be valid' do
    assert @user.valid?
  end

  test 'name should be present' do
    @user.name = '   '
    # 空白の文字が渡ってきた場合はバリデーションを通過させない
    assert_not @user.valid?
  end

  test 'email should be present' do
    @user.email = '   '
    # 空白の文字が渡ってきた場合はバリデーションを通過させない
    assert_not @user.valid?
  end

end

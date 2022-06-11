require "test_helper"

class Public::UserTest < ActiveSupport::TestCase

  def setup
    @user = Public::User.new(name: 'T-unity', email: 'tea-uni@example.com')
  end

  test 'should be valid' do
    assert @user.valid?
  end

  # 空白の文字が渡ってきた場合はバリデーションを通過させない
  test 'name should be present' do
    @user.name = '   '
    assert_not @user.valid?
  end
  test 'email should be present' do
    @user.email = '   '
    assert_not @user.valid?
  end

  # 長すぎる文字列は許可しない
  test 'name should not be too long' do
    @user.name = 'a' * 51
    assert_not @user.valid?
  end
  test 'email should not be too long' do
    @user.email = 'a' * 244 + '@example.com'
    assert_not @user.valid?
  end

  # emailの検証
  test 'email validation should acceput valid address' do
    valid_addresses = %w[
      hoge@example.com
      HOGE@example.COM
      HO_GE@foo.bar.org
      hoge.fuga@hoge.jp
      hoge+fuga@baz.cn
    ]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end
  test 'email validation should reject invalid address' do
    invalid_addresses = %w[
      hoge@example,com
      user_at_foo.org
      user.name@example.
      foo@bar_baz.com
      foo@bar+baz.com
      hoge@fuga...com
    ]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

end

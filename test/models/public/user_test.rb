require "test_helper"

class Public::UserTest < ActiveSupport::TestCase

  def setup
    @user = Public::User.new(name: 'T-unity', email: 'tea-uni@example.com')
  end

  test 'should be valid' do
    assert @user.valid?
  end

end

# require "test_helper"

# class UsersSignupTest < ActionDispatch::IntegrationTest
#   # test "the truth" do
#   #   assert true
#   # end

#   test 'invalid signup' do
#     get signup_path
#     assert_no_difference 'Public::User.count' do
#       post signup_path, params: { public_user: {
#         name: '',
#         email: 'hoge@ivalid',
#         pasword: 'hoge',
#         password_confirmation: 'fuga'
#       } }
#     end
#     assert_template 'public/users/new'
#   end

# end

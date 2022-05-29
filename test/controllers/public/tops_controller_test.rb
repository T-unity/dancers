require "test_helper"

class Public::TopsControllerTest < ActionDispatch::IntegrationTest

  # Expect 200OK to be returned from the top page.
  test "should get top" do
    # get public_tops_top_url
    get root_path
    assert_response :success
  end

  # # Expect 200OK to be returned from the top page.
  test 'should get about' do
    get about_path
    assert_response :success
  end
  
end

require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test 'layout_links' do
    get root_path
    assert_template 'public/tops/top'
    # root_pathが描画するテンプレートが'public/tops/top'になってるか確認。
    assert_select 'a[href=?]', about_path
    # 上記の書き方で、?の部分をabout_pathに置換する。
  end

end

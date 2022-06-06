require "test_helper"

class SiteLayoutTest < ActionDispatch::IntegrationTest

  test 'layout_links' do
    # トップページの統合テスト
    get root_path
    assert_template 'public/tops/top'
    # root_pathが描画するテンプレートが'public/tops/top'になってるか確認。
    assert_select 'a[href=?]', about_path
    # 上記の書き方で、?の部分をabout_pathに置換する。

    # ユーザー登録ページの統合テスト
    get signup_path
    assert_template 'public/users/new'
  end

end

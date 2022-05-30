module ApplicationHelper

  # ブラウザタブに表示するテキストを返却する。
  def browser_tab_text(page_title)
    title = 'Dancers'
    # if page_title # 左の条件で判定しようとするとうまくいかない。
    # nilとfalseについて確認しといた方が良さそう。
    if page_title.empty?
      # page_title + ' - ' + title
      title
    else
      # title
      page_title + ' - ' + title
    end
  end

end

module ApplicationHelper
  def browser_tab_text
    title = 'Dancers'
    if @browser_tab_text
      title = @browser_tab_text + ' - ' + title
    end

    title
  end
end

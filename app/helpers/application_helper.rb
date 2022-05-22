module ApplicationHelper
  def page_title
    title = 'Dancers'
    if @page_title
      title = @page_title + ' - ' + title
    end
    
    title
  end
end

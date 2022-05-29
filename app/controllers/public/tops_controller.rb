class Public::TopsController < ApplicationController
  def top
  end

  def about
    @page_title = 'About'
  end
end

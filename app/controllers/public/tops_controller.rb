class Public::TopsController < ApplicationController
  def top
  end

  def about
    @browser_tab_text = 'About'
  end
end

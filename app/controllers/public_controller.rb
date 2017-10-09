class PublicController < ApplicationController

  def home
    @home_tab = true

    render layout: false
  end

  def contact
    @header_title = "Work With Me"
    @lead = Lead.new
  end

  def about
    @header_title = "About Me"
  end

  def podcast
    @header_title = "Podcast"
  end

  def blog
    @header_title = "Blog"
  end
end
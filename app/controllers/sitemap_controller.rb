class SitemapController < ApplicationController
  def index
  end

  def sitemap
    @posts = Post.find(:all, :order => "updated_at DESC", :limit => 50000)
    headers["Content-Type"] = "text/xml"
    # set last modified header to the date of the latest entry.
    headers["Last-Modified"] = @posts[0].updated_at.httpdate
  end

end

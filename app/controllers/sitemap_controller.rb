class SitemapController < ApplicationController
  def index
  end

  def sitemap
    @posts = Post.find(:all, :order => "updated_at DESC", :limit => 50000)
    respond_to do |format|
      format.xml
    end  
  end

end

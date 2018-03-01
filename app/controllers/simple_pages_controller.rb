class SimplePagesController < ApplicationController
  def index
    @posts = Post.all.reverse
  end

  def thank_you
  end
end

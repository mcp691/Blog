class SimplePagesController < ApplicationController
  def index
    @posts = Post.limit(3).reverse
  end

  def thank_you
  end
end

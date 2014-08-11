class HomeController < ApplicationController
  def index
    @gifs = Gif.all
  end

  def about

  end
end
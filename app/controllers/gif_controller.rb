class GifController < ApplicationController
  def new
    @gif = Gif.new
  end

  def create
    @gif = Gif.new(url:params[:gif][:url], description:params[:gif][:description])
    if @gif.save
      flash[:notice] = "Gif created successfully"
      redirect_to "/"
    else
      render :new
    end
  end

end
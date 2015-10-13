class LinksController < ApplicationController

  def index
    @links = Link.all
  end

  def new
    @link = Link.new
    render :new
  end

  def create
    @link = Link.new(link_params)
    if @link.save
      redirect_to links_path
    else
      render :new
    end
  end

  def update
    @link = Link.find(params[:id])
    @link.update(points: (@link.points + (params[:f][:points]).to_i))
    redirect_to links_path
  end

  private
  def link_params
    params.require(:link).permit(:title, :url)
  end
end

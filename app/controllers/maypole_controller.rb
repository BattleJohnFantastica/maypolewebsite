class MaypoleController < ApplicationController
  def index
  end
  def landingpage
  end
  def argle
    render subpath
  end
  def subpage
    @article = Maypole.new
  end
  def autopage
    @article = Maypole.new
    @car = params[:page]
    @u = Page.find(@car)
    @style = "background-image:url(\"" + @u.photo_main + "\")"
  end
  def autopage_video
    @article = Maypole.new
    @car = params[:page]
    @u = Pagevideo.find(@car)
    @style = "background-image:url(\"" + @u.photo_main + "\")"
  end
  def create
    @article = Maypole.new(params.require(:maypole).permit(:name, :email, :message))
    if @article.save
      redirect_to '/'
    else
      render 'subpage'
    end
  end
end

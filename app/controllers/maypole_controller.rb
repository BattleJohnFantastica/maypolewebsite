class MaypoleController < ApplicationController
  def index
  end
  def landingpage
  end
  def argle
    render subpath
  end
  def subpage
  end
  def create
    @article = Maypole.new(params.require(:maypole).permit(:name, :email, :message))
    @article.save
    redirect_to "/subpage"
  end
end

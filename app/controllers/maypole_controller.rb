class MaypoleController < ApplicationController
  require 'yaml'
  class Visual
    attr_reader :picture, :link, :name
    def initialize(name)
      @vid = Video.where(:name => name).first
      @name = name
      @picture = @vid.photo
      @link = @vid.link
    end
  end
  class VisualSet
    attr_reader :first, :second, :third
    def initialize(set)
      @first = Visual.new(set[0])
      @second = Visual.new(set[1])
      @third = Visual.new(set[2])
    end
  end
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
    @page_id = params[:page]
    @page_info = Pagevideo.find(@page_id)
    @top = Visual.new(@page_info.photo_main)
    @set = VisualSet.new(YAML.load(@page_info.sub_videos_set))
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

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
  class MegaLinks
    attr_reader :first, :second, :third
    def initialize(set)
      @sub1 =  set.photo_sub_1_link
      @first = Subpage.where(:photo_link => @sub1).first.photo_title
      @sub2 =  set.photo_sub_2_link
      @second = Subpage.where(:photo_link => @sub2).first.photo_title
      @sub3 =  set.photo_sub_3_link
      @third = Subpage.where(:photo_link => @sub3).first.photo_title
    end
  end
  before_filter :javascriptDatabase
  def javascriptDatabase
    @dat =  ["John", "Johnathon", "Jake", "Harry", "Harold"]
    @dat2 =  [{ num: 'one' }, { num: 'two' }]
    @dat3 = @dat.collect{ |item| {"num" => item} }
    @dat4 = Page.select(:title).map(&:title) + Pagevideo.select(:title).map(&:title)
    @dat5 = @dat4.collect{ |item| {"num" => item} }
    @dat6 = Pagevideo.select(:title)
    @dat7 = Pagevideo.select("id", "title").map{|x| ["v?page=" + x.id.to_s, x.title]}
    @data = @dat5.to_json
    @data3 = Page.select("id", "title").map{|x| [x.id, x.title]}
    @data2 = Page.select("id", "title").map{|x| ["p?page=" + x.id.to_s, x.title]} + Pagevideo.select("id", "title").map{|x| ["/v?page=" + x.id.to_s, x.title]}
  end
  def index
  end
  def landingpage
  end
  def nopage
    @article = Maypole.new
  end
  def experimentpage
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
    @subPageTitle = MegaLinks.new(@u)
    if @u.photo_main == "NONE"
      @box = "box"
    else
      @box = "boxes"
    end
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

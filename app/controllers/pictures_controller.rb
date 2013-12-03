class PicturesController < ApplicationController
  User    = Struct.new(:name, :pictures)
  Picture = Struct.new(:name, :url)

  def index
    @user = User.new("Bob", dummy_pics)
    @pics = @user.pictures
    @pic_index = (params[:pic].try(:to_i) || 0) % @pics.size
    @current_pic = @pics[@pic_index]
  end

  private

  def dummy_pics
    %w(a b c).map {|name| Picture.new(name, "/assets/#{name}.jpg") }
  end
end

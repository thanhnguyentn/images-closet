class TagsController < ApplicationController
  def new
    @image = Image.find(params[:id])
    @tag = @image.tags.new
  end

  def create
    @tag = Tag.new(params.require(:tag).permit(:image_id, :user_id))
    if @tag.save
      redirect_to images_path, notice: "Successfully Tag"
    else
      render :new
    end
  end
end

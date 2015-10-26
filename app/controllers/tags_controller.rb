class TagsController < ApplicationController
  before_action :set_tag, only: [:show, :edit, :update, :destroy]
  before_action :all_posts, only: [:edit, :new]

  def index
    @tags = Tag.all
  end

  def show
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new tag_params
    if @tag.save
      redirect_to tags_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @tag.update tag_params
    if @tag.save
      redirect_to @tag
    else
      render :edit
    end
  end

  def destroy
    @tag.destroy
    redirect_to tags_path
  end
  
  private
    def tag_params
      params.require(:tag).permit(:name, post_ids: [])
    end

    def all_posts
      @posts = Post.all
    end

    def set_tag
      @tag = Tag.find params[:id]
    end
end

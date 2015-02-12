class PostsController < ApplicationController
  
  before_action :set_post, only: [:show]
  before_action :set_tags_cloud


  def index
    @posts = load_from_params
  end

  def show
  end

private 
  
  def set_post
    @post = Post.find_by(slug: params[:id])
  end

  def set_tags_cloud
    @tags = Post.tag_counts_on(:tags)
  end

  def load_from_params
    @posts = Post.find_by_lang(I18n.locale.to_s)
    if params[:tag_id].present?
      @posts = @posts.tagged_with(ActsAsTaggableOn::Tag.find(params[:tag_id]))
    end
    @posts.paginate(page: params[:page], per_page: 15)
  end
end
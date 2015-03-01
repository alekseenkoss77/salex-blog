class ProjectsController < ApplicationController
  
  before_action :set_project, only: [:show]
  before_action :set_tags_cloud

  def index
    load_from_params
  end

  def show
  end

private 
  
  def set_project
    @project = Project.find_by(slug: params[:id])
  end

  def set_tags_cloud
    @tags = Project.tag_counts_on(:tags)
  end

  def load_from_params
    @projects = Project.find_by_lang(I18n.locale.to_s)
    if params[:tag_id].present?
      @projects = @projects.tagged_with(ActsAsTaggableOn::Tag.find(params[:tag_id]))
    end
    @projects = @projects.paginate(page: params[:page], per_page: 6)
    @projects
  end
end
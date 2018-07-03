class SearchController < ApplicationController
  def index
    @ideas = Idea.where("idea_title like '%#{params[:search]}%' OR details like '%#{params[:search]}%' OR name like '%#{params[:search]}%' ")
  end
end

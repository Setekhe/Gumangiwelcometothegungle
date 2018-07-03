class SearchController < ApplicationController
  def index
    @ideas = Idea.includes (params[:search] )
  end
end

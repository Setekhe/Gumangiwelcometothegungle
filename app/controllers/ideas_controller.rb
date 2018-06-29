class IdeasController < ApplicationController
  def new
  end
  def create
    @idea = Idea.new(idea_params)
    @idea.save
    redirect_to @idea
  end
  def show
    @idea = Idea.find(params[:id])
  end
  private
    def idea_params
      params.require(:idea).permit(:idea_title, :details)
    end
end

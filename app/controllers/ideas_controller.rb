class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
  end
  def new
    if session[:user_id]
      @idea = Idea.new
    else
      redirect_to new_session_path
    end
  end
  def create
    @idea = Idea.new(idea_params)
    if @idea.save
      redirect_to @idea
    else
      render 'new'
    end
  end
  def show
    @idea = Idea.find(params[:id])
  end
  def destroy
  @idea = Idea.find(params[:id])
  @idea.destroy

  redirect_to ideas_path
end
  private
    def idea_params
      params.require(:idea).permit(:idea_title, :details, :name, :id)
    end
end

class CommentsController < ApplicationController
   http_basic_authenticate_with name: "Superadmin", password: "1234", only: :destroy
  def create
    @idea = Idea.find(params[:idea_id])
    @comment = @idea.comments.create(comment_params)
    redirect_to idea_path(@idea)
  end
  def destroy
      @idea = Idea.find(params[:idea_id])
      @comment = @idea.comments.find(params[:id])
      @comment.destroy
      redirect_to idea_path(@idea)
    end
  private
    def comment_params
      params.require(:comment).permit(:name, :details)
    end
end

class CommentsController < ApplicationController

  def create
    #@prototype = Prototype.find(params[:prototype_id])
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to root_path
    else
      #@prototypes = @comment.prototype_id.includes(:user)
      @prototype = @comment.prototype
      @comments = @prototype.comments
      render "prototypes/show"
    end
  end

  # def show
  #   @comment = Comment.new
  #   @comments = @prototype.comments.includes(:user)
  # end

  private
  def comment_params
    params.require(:comment).permit(:id, :text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
  end

end
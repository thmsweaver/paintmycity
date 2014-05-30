class CommentsController < ApplicationController

  def create
    @composition = Composition.find(params[:composition_id])
    @comment = Comment.new
    @comment.entry = params[:comment][:entry]
    @comment.composition = @composition
    @comment.user = current_user
    @comment.save
    redirect_to user_composition_path(current_user, @composition)
  end

end

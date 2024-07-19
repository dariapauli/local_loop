class CommentsController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @comment = Comment.new(comment_params)
    @comment.save
    @event.comment = @comment

  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :event_id)
  end

end

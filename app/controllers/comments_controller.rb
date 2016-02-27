class CommentsController < ApplicationController

  def create
    @concert = Concert.find params[:concert_id]
    @comment = @concert.comments.new comment_params
    if @comment.save
      flash[:notice] = "Comment created succesfully"
      redirect_to concert_path(@concert)
    else
      flash[:alert] = "ALERT Comment not created"
      redirect_to concert_path(@concert)
    end
  end

  private

  def comment_params
   params.require(:comment).permit(:comment)
  end

end

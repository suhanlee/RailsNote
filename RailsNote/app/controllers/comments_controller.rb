class CommentsController < ApplicationController
  before_action :set_note
  before_action :set_comment, only: :destroy

  def create
    @comment = @note.comments.new(comment_params)
    @comment.save
  end

  def destroy
    @comment.destroy
  end

  private

  def set_note
    @note = Note.find(params[:note_id])
  end

  def set_comment
    @comment = @note.comments.find(params[:id])
  end
  def comment_params
    params.require(:comment).permit(:body)
  end
end

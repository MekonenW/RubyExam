class CommentsController < ApplicationController
  def create
  	comment= Comment.new(comment_params)
  	comment[:user_id] = session[:user_id]
  	comment.save
  end
  private 
  	def comment_params
  		params.require(:comment).permit(:comment, :event_id, :user_id)
  	end
end

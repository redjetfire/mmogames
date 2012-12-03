class CommentsController < ApplicationController
  before_filter :fetch_server

  def create
    @comment = @server.comments.build(params[:comment]) 
    @comment.user_id = current_user.id
    @comment.save
    redirect_to server_path(@server)
  end

  def destroy
  	@comment = Comment.find(params[:id])
  	@comment.destroy
  	redirect_to server_path(@server)
  end

  private

  def fetch_server
    @server = Server.find params[:server_id]
  end
end

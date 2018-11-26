class ReplyController < ApplicationController
  def create
    @reply = Reply.new
    @reply.content = params[:content]
    @reply.post_id = params[:post_id]
    @reply.user_id = current_user.id
    @reply.save
    
    redirect_to :back
  end

  def destroy
    @reply = Reply.find(params[:id])
    if current_user.id == @reply.user_id
      @reply.destroy
      redirect_to :back
    else
      redirect_to :back
    end
  end
end

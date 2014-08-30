class CommentsController < ApplicationController
  before_action :require_login, except: [:show, :index]
  def new
    @comment = Comment.new
  end

  def show
  end

  def create

    if params[:comment][:comment].blank?
      redirect_to post_path(params[:post_id].to_i), notice: "Comment Cannot be blank" 
    else
      comment = Comment.new(:comment => params[:comment][:comment], 
                          :post_id => params[:post_id].to_i,
                          :created_by => params[:user_id].to_i )

      if comment.save
      	redirect_to post_path(comment.post_id), notice: "Comment Added"
      elsif 
        redirect_to post_path(comment.post_id), notice: "Comment Not Added"
      end
    end
  end

  def destroy
    @comment.destroy
    redirect_to post_path(@comment.post_id), notice: "Comment Deleted"
  end
end

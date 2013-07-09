class CommentController < ApplicationController
	def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(@post)
    @comment.save!
  end
end

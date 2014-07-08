class CommentsController < ApplicationController
	def create
		image = Image.find(params[:image_id])
		image.comments.create(comment_params)
		redirect_to [image.gallery, image]
	end
	private
	def comment_params
		params.require(:comment).permit(:content).merge(user: current_user)
	end
end

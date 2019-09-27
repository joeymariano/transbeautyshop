class PostsController < ApplicationController
	def create
		post = Post.new(post_params)
		user = User.find(params['user_id'])
		binding.pry
		user.posts << post
		redirect_to user_path(user)
	end

	private

	def post_params
	 params.require(:post).permit(:title, :body, :user_id)
	end
end

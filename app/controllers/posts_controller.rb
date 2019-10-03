class PostsController < ApplicationController
	layout "user_layout"

	def create
		binding.pry
		post = Post.new(post_params)
		user = User.find(params['user_id'])
		user.posts << post
		redirect_to user_path(user)
	end

	def edit
		@post = Post.find(params['id'])
		@user = User.find(params['user_id'])
	end

	def update
		@post = Post.find(params['id'])
		@user = User.find(params['user_id'])
		if @post.update(post_params)
			flash[:notice] = 'success!'
		end
		redirect_to edit_user_post_path(@user, @post)
	end

	private

	def post_params
		params.require(:post).permit(:file, :title, :body, :user_id)
	end
end

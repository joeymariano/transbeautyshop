class PostsController < ApplicationController
	layout "user_layout"
	# before_action: 

	def create
		post = Post.new(post_params)
		user = User.find(params['user_id'])
		user.posts << post
		redirect_to user_path(user)
	end

	def edit
		if is_logged_in?
			@post = Post.find(params['id'])
			@user = User.find(params['user_id'])
		else
			redirect_to '/'
		end
	end

	def update
		@post = Post.find(params['id'])
		@user = User.find(params['user_id'])
		if @post.update(post_params)
			flash[:notice] = 'success!'
		end
		redirect_to edit_user_post_path(@user, @post)
	end

	def destroy
		binding.pry
		if is_logged_in?
			post = Post.find(params['id'])
			user = User.find(params['user_id'])
			post.delete
			redirect_to user_path(user)
		else
			redirect_to '/'
		end
	end 

	def is_logged_in?
		user = User.find(params[:user_id])
		if user.id == session['user_id']
			return true
		else
			return false
		end
	end

	private

	def post_params
		params.require(:post).permit(:file, :title, :body, :user_id)
	end
end

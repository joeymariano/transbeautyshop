class UsersController < ApplicationController
	layout "user_layout"

	def is_logged_in?
		user = User.find(params[:id])
		if user.id == session['user_id']
			return true
		else
			return false
		end
	end

	def show
		if is_logged_in?
			@user = User.find(params[:id])
			@posts = @user.posts
			@post = Post.new
		else
			redirect_to '/'
		end
	end
end

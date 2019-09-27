class UsersController < ActionController::Base
	def create
	end

	def update
	end

	def show
		@user = User.find(params[:id])
		@posts = @user.posts
		@post = Post.new
	end

	def destroy
	end
end

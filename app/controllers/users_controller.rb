class UsersController < ActionController::Base
	def create
	end

	def update
	end

	def show
		@user = User.find(params[:id])
	end

	def destroy
	end
end

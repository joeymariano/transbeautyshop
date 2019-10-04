class SessionsController < ApplicationController
	layout "user_layout"

	def login
	end

	def logout
		session.delete('user_id')
		redirect_to root_path
	end

	def create
		user = User.find_by(email: params['email'])
		if user.authenticate(params['password'])
			session[:user_id] = user.id
			redirect_to user_path(user)
		else
			flash[:notice] = user.errors
			redirect_to '/login'
		end
	end
end

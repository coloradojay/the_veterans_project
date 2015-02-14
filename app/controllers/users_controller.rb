class UsersController < ApplicationController

	def index
	end

	def new
		@user = User.new
	end

	def show 
		@user = User.find(params[:id])
	end

	def create
		@user = User.new(user_params)

		if @user.save
			flash[:notice] = "User successfully created!"
			redirect_to root_path
		else
			render :new
		end
	end 

	def edit
		@user = User.find(params[:id])
	end

	def post
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])

		if @user.update(user_params)
			flash[:notice] = "This user has been updated."
			redirect_to to users_path
		else
			render :edit
		end
	end 

	def destroy 
		User.find(params[:id]).destroy
		flash[:notice]= "User has been deleted."
		redirect_to users_path
	end 

	private
		def user_params
			params.require(:user).permit(:first_name, :last_name, :email, :password)
		end

end


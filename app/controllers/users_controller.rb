class UsersController < ApplicationController

	def index
	end

	def new
		@user = User.new
		@submit_message = 'Sign Up'	
	end

	def show 
		@user = User.find(params[:id])
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			flash[:notice] = "User successfully created!"
			redirect_to root_path
		else
			render :new
		end
	end 

	def edit
		@user = User.find(params[:id])
		@user.build_address if @user.address.blank?
		@submit_message = 'Update Account'
	end

	def post
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])

		if @user.update(user_params)
			flash[:notice] = "This user has been updated."
			redirect_to @user
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
			params.require(:user).permit(:first_name, :last_name, 
				:email, :password, :password_confirmation,
				educations_attributes: [:id, :school_name, :yr_attended_from,
			 		:yr_attended_to, :degree_name, :field_of_study, :description, :_destroy],
		 		work_histories_attributes: [:id, :company_name, :job_title, :location, 
		 			:start_date, :end_date, :description, :_destroy],
	 			skills_attributes: [:id, :name, :_destroy ],
	 			address_attributes: [:id, :address1, :address2, :city, :state, :zip, :_destroy])
		end

end


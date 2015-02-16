class CompaniesController < ApplicationController
  def new
    @company = Company.new
    @submit_message = 'Sign Up'
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      session[:company_id] = @company.id
      flash[:notice] = "Company successfully created!"
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @company = Company.find(params[:id])
  end

  def edit
    @company = Company.find(params[:id])
    @submit_message = 'Edit Account'
  end

  def post
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])

    if @company.update(company_params)
      flash[:notice] = "Company profile has been updated."
      redirect_to company_path
    else
      render :edit
    end
  end

  def destroy
    Company.find(params[:id]).destroy
    flash[:notice]= "Company has been deleted"
    redirect_to root_path
  end

  private
    def company_params
        params.require(:company).permit(:name, :address1, :address2, :city, :state, :zip, :email, :phone_number, :website, :facebook, :twitter, :google_plus, :password, :description, :num_employees, :contact_name, :contact_position, :contact_email, :contact_phone, :job, :sector, :type, :vet_program)
    end
end
class SignupController < ApplicationController
  def index
    
  end

  def create
  	if Signup.where(email: params['signup']['email'].to_s).take  
  		flash[:success] = "User Already Exist"
  	else
  		@signup = Signup.new(signup_params)
  		if @signup.save
      		flash[:success] = "New User Added Successfully"
    	else
      		flash[:error] = @signup.errors.full_messages
    	end
  	end
  	redirect_to signup_index_path
  end

  private
  def signup_params
    params.require(:signup).permit(:name, :email, :password, :terms_of_service)
  end
end
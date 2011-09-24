class SessionsController < ApplicationController
  def new
  
  end
  
  def create
  	
        
		merchant=Merchant.authenticate(params[:session][:Email],params[:session][:password])
	
		if merchant.nil?
  		 flash.now[:error]= "Invalid email";
   		render 'new'
  		else
  	 	sign_in merchant
   	 	redirect_to merchant
	
	
	
        end
  	
	
  	
  end

  def destroy
  sign_out
  redirect_to root_path
  end

end

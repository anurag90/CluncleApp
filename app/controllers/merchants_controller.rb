class MerchantsController < ApplicationController

def new
@merchant=Merchant.new;
puts @merchant.Email
end

def create
@merchant=Merchant.new(params[:merchant])


@merchant.Flag=false;
if @merchant.save
	render "create"
	MerchantMailer.welcome_mail(@merchant).deliver
else
	render "new"
#The following piece of code signs a user in on signup.
end
end



def show
@merchant=Merchant.find(params[:id])

end

end

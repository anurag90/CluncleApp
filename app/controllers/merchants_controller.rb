class MerchantsController < ApplicationController

def new
@merchant=Merchant.new;
puts @merchant.Name
end

def create
@merchant2=Merchant.new(params[:merchant])
#The following piece of code signs a user in on signup.

end



def show
@merchant=Merchant.find(params[:id])

end

end

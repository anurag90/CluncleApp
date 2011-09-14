class AuthenticationsController < ApplicationController
def index
end

def create
     
 auth = request.env["omniauth.auth"]["user_info"]["email"]
  #current_merchant.authentications.create(:provider => auth['provider'], :uid => auth['uid']) 
@merchant_fb=Merchant.find_by_Email(auth);
sign_in @merchant_fb
if signed_in?
flash[:notice]="Authentication successful"
#redirect_to authentications_url
redirect_to "/merchants/#{@merchant_fb.id}"
else 
render :text => merchant_fb.to_json 
end
end

def destroy
end
end

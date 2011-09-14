module SessionsHelper

    def sign_in(merchant)
	cookies.permanent.signed[:remember_token]=[merchant.id]
	self.current_merchant=merchant
	end

    def current_merchant=(merchant)
    @current_merchant=merchant
    end

    def current_merchant
	@current_merchant ||= merchant_from_remember_token
    end

    def merchant_from_remember_token
        Merchant.authenticate_with_id(remember_token)
   end

  def remember_token
  cookies.signed[:remember_token] || [nil,nil]
  end

  def signed_in?
    !current_merchant.nil?
  end

  def sign_out
     cookies.delete(:remember_token)
     self.current_merchant=nil
  end
end

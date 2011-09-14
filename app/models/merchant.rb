class Merchant < ActiveRecord::Base
has_many :authorizations

	def self.authenticate(email)
		merchant=find_by_Email(email)
		if merchant.nil?
		 return nil
   		else
		 return merchant
		end
	end


	def self.authenticate_with_id(id)
		merchant = find_by_id(id)
		if merchant.nil?
 		 return nil
		else 
 		 return merchant
		end
	end

	def self.create_from_hash!(hash)

  		create(:name => hash['Name'])

	end
end

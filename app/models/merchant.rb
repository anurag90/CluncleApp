require 'digest'
class Merchant < ActiveRecord::Base
#has_many :authorizations
validates :Name , :presence => true, :format => { :with => /^[a-zA-Z]+\s[a-zA-Z]+$/ , :message => "Only letters allowed" }
validates :PhoneNumber, :format => { :with => /^\d{10}$/ , :message => "Only 10 digit US Phone numbers allowed" }
validates :zipcode, :format => { :with => /^\d{5}$/ , :message => "Zip Code is required"}
validate :stateField_set

attr_accessor :password
attr_accessible :Name, :zipcode, :UserName, :RegistrationName, :BusinessName, :ContactPerson, :PhoneNumber, :Fax, :BusinessAdress, :Email, :Website, :stateField


	def stateField_set
	@states=States.where("stateName=?",self.stateField);
	if(@states.empty?)
	 errors.add(:stateField, "not set correctly")
	end

	end

	

	def self.authenticate(email, submitted_password)
		merchant=find_by_Email(email)
		puts submitted_password
		
		if merchant.nil?
		 return nil
   		else
		 return merchant if merchant.has_password?(submitted_password)
		end
	end

	def has_password?(submitted_password)
	
	  puts encrypted_password
	  encrypted_password==(submitted_password)

	end

	def self.authenticate_with_id(id)
		merchant = find_by_id(id)
		if merchant.nil?
 		 return nil
		else 
 		 return merchant
		end
	end

	
	
	

end





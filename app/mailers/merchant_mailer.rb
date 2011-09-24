class MerchantMailer < ActionMailer::Base
  default from: "from@example.com"

def welcome_mail(merchant)
@merchant=merchant
mail(:to => merchant.Email , :subject =>"Welcome to Frooday");


end
end

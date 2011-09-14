class Authentication < ActiveRecord::Base
belongs_to :merchant

validates_presence_of :merchant_id, :uid, :provider
validates_uniqueness_of :uid, :scope => :provider
def self.find_from_hash(hash)
  find_by_provider_and_uid(hash['provider'], hash['uid'])
end

def self.create_from_hash(hash, merchant = nil)
  merchant ||= Merchant.create_from_hash!(hash)
  Authorization.create(:merchant => merchant, :uid => hash['uid'], :provider => hash['provider'])
end
end

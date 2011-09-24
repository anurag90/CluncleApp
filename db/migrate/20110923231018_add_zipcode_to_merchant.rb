class AddZipcodeToMerchant < ActiveRecord::Migration
  def change
    add_column :merchants, :zipcode, :string
  end
end

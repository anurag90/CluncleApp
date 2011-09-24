class AddSaltToMerchants < ActiveRecord::Migration
  def change
    add_column :merchants, :salt, :string
  end
end

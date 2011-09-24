class AddPasswordToMerchants < ActiveRecord::Migration
  def change
    add_column :merchants, :encrypted_password, :string
  end
end

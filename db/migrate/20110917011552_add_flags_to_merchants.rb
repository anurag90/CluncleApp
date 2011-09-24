class AddFlagsToMerchants < ActiveRecord::Migration
  def change
    add_column :merchants, :Flag, :boolean
  end
end

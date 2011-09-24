class AddStateToMerchants < ActiveRecord::Migration
  def change
    add_column :merchants, :stateField, :string
  end
end

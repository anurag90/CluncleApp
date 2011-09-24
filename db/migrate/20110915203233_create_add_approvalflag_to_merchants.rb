class CreateAddApprovalflagToMerchants < ActiveRecord::Migration
  def change
    create_table :add_approvalflag_to_merchants do |t|
      t.boolean :Flag

      t.timestamps
    end
  end
end

class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :stateName

      t.timestamps
    end
  end
end

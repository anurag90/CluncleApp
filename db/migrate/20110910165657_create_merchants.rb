class CreateMerchants < ActiveRecord::Migration
  def change
    create_table :merchants do |t|
      t.string :Name
      t.string :UserName
      t.string :RegistrationName
      t.string :BusinessName
      t.string :ContactPerson
      t.string :PhoneNumber
      t.string :Fax
      t.string :BusinessAdress
      t.string :Email
      t.string :Website

      t.timestamps
    end
  end
end

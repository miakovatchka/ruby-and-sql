class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "email"
      t.integer "company_id" #this is the foreign key to the companies table; i.e., 
      # which company does contact work for

      t.timestamps
    end
  end
end

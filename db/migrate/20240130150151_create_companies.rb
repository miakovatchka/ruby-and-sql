class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      # t.integer "id" not needed --> automatically added by "rails"
      t.string "name"
      #create a column called "name"
      t. string "city"
      t.string "state"
      t.string "url"

      t.timestamps
      # to track when e.g., row was inserted/edited ...
      # once file runs will never run again; i.e., can't add columns after the fact; can delete
      # datbasefile (development.sqlite3) 
      # and re-create
      # or create new file (additional migration files)
    end
  end
end

# create table companies (
  # id primary key autoincrement integer;
  #...
#)
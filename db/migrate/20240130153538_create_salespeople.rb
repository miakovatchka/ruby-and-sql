class CreateSalespeople < ActiveRecord::Migration[7.1]
  def change
    create_table :salespeople do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "email"

      t.timestamps
    end
  end
end

# 2. open newly generated files

# 3. in the db/migrate file, add relevant columns matching our domain model

# 4. in terminal, execute the migration file
# rails db:migrate

# 5. check the schema to confirm the change
class CreateActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :activities do |t|
      t.string "notes"
      t.string "ocurred_at"
      t.string "contact_id"
      t.string "salesperson_id"

      t.timestamps
    end
  end
end

# 2. open newly generated files

# 3. in the db/migrate file, add relevant columns matching our domain model

# 4. in terminal, execute the migration file
# rails db:migrate
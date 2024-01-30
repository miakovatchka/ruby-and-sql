# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# at beginning of every run removing all data in companies table so do not have duplicates
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file
puts "There are #{Company.all.count} companies"

# 2. insert new rows in companies table
new_company = Company.new

puts new_company.inspect

new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "CA"
new_company["url"] = "https://www.apple.com"

# so far values have not been inserted into table yet --> need method .save
new_company.save # now values have been inserted

puts "There are #{Company.all.count} companies"

new_company2 = Company.new # opens up new hash (Company.New)
new_company2["name"] = "Amazon"
new_company2["city"] = "Seattle"
new_company2["state"] = "WA"
new_company2["url"] = "https://www.amazon.com"
new_company2.save

puts "There are #{Company.all.count} companies"

new_company3 = Company.new # opens up new hash (Company.New)
new_company3["name"] = "Twitter"
new_company3["city"] = "San Fransisco"
new_company3["state"] = "CA"
new_company3["url"] = "https://www.twitter.com"
new_company3.save

puts "There are #{Company.all.count} companies"

# rails runner data.rb --> see data in tabular format

# 3. query companies table to find all row with California company
all_companies = Company.all
## puts all_companies.inspect

cali_companies = Company.where({"state" => "CA"})
## puts cali_companies.inspect
## puts "Companies in Cali: #{cali_companies.count}"

# 4. query companies table to find single row for Apple
# could do: apple = Company.where({"name" => "Apple"})[0]
# alternative is: ".find_by" method
apple = Company.find_by({"name" => "Apple"}) # assumes there is only one value for Apple
puts apple.inspect

# 5. read a row's column value

# 6. update a row's column value

# 7. delete a row

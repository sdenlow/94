# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file
new_company = Company.new

# 2. insert new rows in companies table
new_company = Company.new 
p new_company
new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company ["state"] = "CA"
new_company ["url"] = "https://apple.com"
p new_company
new_company.save
p new_company

new_company = Company.new 
p new_company
new_company["name"] = "Amazon"
new_company["city"] = "Seattle"
new_company ["state"] = "WA"
new_company ["url"] = "https://amazon.com"
p new_company
new_company.save
p new_company


new_company = Company.new 
p new_company
new_company["name"] = "Anthropic"
new_company["city"] = "San Francisco"
new_company ["state"] = "CA"
new_company ["url"] = "https://anthropic.com"
p new_company
new_company.save
p new_company


puts "Companies: #{Company.all.count}"

# 3. query companies table to find all row with California company
cali_companies = Company.where({"state" => "CA"})

# p. cali_companies
puts "California companies: #{cali_companies.count}"

# 4. query companies table to find single row for Apple
apple = Company.find_by({"name" => "Apple" })
p apple

# 5. read a row's column value
puts apple["url"]

# 6. update a row's column value
apple["url"] = "https://www.apple.com"
apple.save
p apple

# 7. delete a row
apple.destroy 
puts "Companies: #{Company.all.count}"
companies = Company.all
for zebra in companies
  puts zebra {"name"}
end
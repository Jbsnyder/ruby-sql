# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb

# **************************
# Don't change or move
Company.destroy_all
# **************************


values = {name: "Amazon", url: "https", city: "NY", state: "NY"}
amazon = Company.new(values)
amazon.save


# 1a. check out the schema file
# 1b. check out the model file
puts "There are now #{Company.all.count} companies."
# 2. create new companies
#have to give same atrributes as the attributes for that object
values = {name: "Apple", url: "https", city: "LA", state: "CA"}
apple = Company.new(values)
apple.save
puts "There are now #{Company.all.count} companies."
# 3. query companies table
california_company = Company.where({state: "CA"})[0]
#the [0] is pulling the first CA state company from the database
puts california_company.inspect
puts california_company.read_attribute(:url)
puts california_company.url
#pull out this website url attribute to read it
# 4. read column values from row
california_company.slogan = "Think different."
california_company.write_attribute(:slogan, "think different.")
california_company.save
# 5. update attribute value

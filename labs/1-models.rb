# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file

# 2. create 1-2 new contacts for each company (they can be made up)
#assosciate contact with the proper company
apple = Company.where({name: "Apple"})[0]
#the where clause creates an array
apple_id = apple.id

new_contact = Contact.new
new_contact.first_name = "John"
new_contact.last_name = "Snyder"
new_contact.email = "@gmail"
new_contact.phone_number = "310-351-3805"
new_contact.company_id = apple_id
new_contact.save

new_contact = Contact.new
new_contact.first_name = "Gus"
new_contact.last_name = "Snyder"
new_contact.email = "@gmail"
new_contact.phone_number = "310-351-3805"
new_contact.company_id = apple_id
new_contact.save

all_contacts = Contact.all
for contact in all_contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.email}"
end




# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:

# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com

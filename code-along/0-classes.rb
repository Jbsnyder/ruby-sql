# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/0-classes.rb
brians_food = "tacos"
puts brians_food.class  

number_tacos = 5
puts number_tacos.class
# String Class

# String Methods
class Dog
def speak
puts "woof"
end
end
#create a dog in new class
jenkins = Dog.new
jenkins.speak
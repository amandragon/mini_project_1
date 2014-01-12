#Title: Gluten Free
 
#Prerequisites:
#- Ruby
#    - Exceptions
#    - Hashes & Arrays
#    - Objects & Classes
 
#Objectives:
#- Work with exceptions, classes, class variables, conditions
 
"======================================================================"
 
# Create a Person class. A person will have a stomach and allergies
# Create a method that allows the person to eat and add arrays of food to their stomachs
# If a food array contains a known allergy reject the food.
 
=begin
food_list=0

class Person

	def initialize(Chris,Beth)
	@Chris=Chris
	@Beth=Beth
	end

	def food_list
	puts food_list.split
	end
end
 
 class AllergyError
end

 #if @allergies=true


# Create a Person named Chris. Chris is allergic to gluten.
# Create a Person named Beth. Beth is allergic to scallops.
# Feed them the following foods
 
person_one = Person.new(Chris)    #asking for user input
puts "FEED ME! -Chris. What would you like to feed Chris?
1) pizza
2) scallops
3) water"
res = gets.chomp.downcase

if res == "1"
begin
  raise AllergyError.new("I'm allergic to that!")
rescue AllergyError => e
 puts "I'm allergic to that!"
 puts food_list=0
end
elsif res=="2"
	food_list=food_list+="scallops"
else
	food_list=food_list+="water"
end

person_two=Person.new(Beth)
puts "FEED ME! -Beth. What would you like to feed Beth?
1) pizza
2) scallops
3) water"
res=gets.chomp.downcase

if res=="1"
	food_list=food_list+="pizza"
elsif res=="2"
begin
  raise AllergyError.new("I'm allergic to that!")
rescue AllergyError => e
 puts "I'm allergic to that!"
 puts food_list=0
end
elsif res=="3"
	food_list=food_list+="water"
end
=end

 
#pizza = ["cheese", "gluten", "tomatoes"]
#pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
#water = ["h", "h", "o"]
 
# When a person attempts to eat a food they are allergic to, raise a custom exception
# For example:  AllergyError
 
 
# Bonus: When a person attempts to eat a food they are allergic to,
#        ... remove ALL the food from the person's stomach before raising the exception

#answer 1:
class AllergyError< RuntimeError #inheritance
end

class Person
	attr_accessor: :name, :stomach, :allergies #want to be able to access these three attributes

	def initialize(name, stomach, allergies)  #initializing the three attributes
		@name=name
		@stomach=stomach
		@allergies=allergies
	end

	def eat(food)  #method to eat food.
		begin
			#food.each {|food| @allergies.each.include?(food) ? (raise AllergyError.new) : @stomach.push(food)) }
		#ternarary operation?
		#could also use do...end
food.each do |food|
	if @allergies.include?(food)
		raise AllergyError.new
	else @stomach.push(food) #just push the food into the stomach.
	end
end


	rescue AllergyError => my_error  #calling the allergyerror outside of the person class.
		@stomach.pop #takes the last food that was added to the stomach and returns it.
		puts "#{@name}: That is not going to work for me."
	end
end
end

pizza = ["cheese", "gluten", "tomatoes"]
pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
water = ["h", "h", "o"]

per1=Person.new("Chris", [], ["gluten"]) #says what chris is allergic to
per2=Person.new("Beth", [], ["scallops"]) #says what beth is allergic to

#...etc (not completed code)

#another way of doing it:




















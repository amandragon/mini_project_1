

animal_hash = {
"name" => "",
"age" => "",
"gender" => "",
"species" => "",
"mul_toys" => ""}


client_hash = {
"name" => "",
"number_children" => "",
"age" => "",
"number_pets" => ""}

class Shelter

	def initialize(animal_hash)
		@animal_hash=animal_hash
	end

	def initialize(client_hash)
		@client_hash=client_hash
	end

	def add_animal(animal_hash)
		add_animal.push #?
	end

	def add_client(client_hash)
		add_client.push #?
	end



end

puts "Please enter your information below"
puts client_hash.keys

#use variables to create client object
#add client to shelter in pry
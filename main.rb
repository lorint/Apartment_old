# Load in the User and Apartment classes
require_relative "tenant"
require_relative "apartment"

puts "[S]how everything ... or add a [T]enant or an [A]partment ... [R]ent a given apartment, or [Q]uit"

tenants = []
apartments = []

response = gets.chomp.downcase

while true
	case response[0]
	when "t"
		puts "What's yer name???"

		# Store the typed name in name2
		name2 = gets.chomp
		# Make a new User with that name
		tenants << Tenant.new(name2)
	when "a"
		puts "Unit num?"
		unit_num = gets.chomp.to_i
		puts "Num of bedrooms?"
		bedrooms = gets.chomp.to_i
		puts "Floor num?"
		floor = gets.chomp.to_i
		# Make a new Apartment
		apartments << Apartment.new(unit_num, bedrooms, floor)
	when "r"
		puts "Choose an apartment:"
		for i in 0...apartments.length
			puts "  #{i}: #{apartments[i].inspect}"
		end
		apartment = apartments[gets.chomp.to_i]
		puts "Choose a user:"
		for i in 0...tenants.length
			puts "  #{i}: #{tenants[i].inspect}"
		end
		user = tenants[gets.chomp.to_i]
		apartment.rent(user)
	when "s"
		puts "Apartments:"
		apartments.each do |a|
			puts "  " + a.inspect
		end
		puts "Tenants:"
		tenants.each do |u|
			puts "  " + u.inspect
		end
	when "q"
		break
	end

	puts "[S]how everything ... or add a [T]enant or an [A]partment ... [R]ent a given apartment, or [Q]uit"
	response = gets.chomp.downcase
end

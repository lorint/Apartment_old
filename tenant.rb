require_relative "user"

class Tenant < User
	attr_accessor :apartment
	# When making a tenant object, we need their name
	def initialize(name)
		# Call out to the base class 
		super(name)
	end
end

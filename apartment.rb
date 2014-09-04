class Apartment
	attr_accessor :floor, :bedrooms, :unit_number, :users

	def initialize(incoming_unit_number, incoming_bedrooms, incoming_floor)
		@unit_number = incoming_unit_number
		@bedrooms = incoming_bedrooms
		@floor = incoming_floor
		@users = []
	end

	def rent(user)
		self.users.push user
		user.apartment = self
	end
end

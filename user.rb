class User
	# This builds out 2 methods!!!
	attr_accessor :name

	# Constructor
	def initialize(incoming_name)
		# self is this User object being built
		# We could have used "self.name" here and set the name
		# through the property above
		# @name refers to the instance variable
		@name = incoming_name
	end

	# # Getter (accessor)
	# def name
	# 	@name
	# end
	# # Setter (mutator)
	# def name=(var)
	# 	@name = var
	# end
end

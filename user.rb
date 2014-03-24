class User
	attr_reader :name, :roles, :age
	attr_accessor :postcode

	def initialize
		@roles = ['admin', 'editor']
		@name = 'Bob'
		@postcode = 'WC1X 8XZ'
		@age = 24
	end

	def add_role(role)
		raise ArgumentError if role.empty?
		@roles << role
	end

	def address
		"#{@postcode}, London, United Kingdom"
	end

	def admin?
		@roles.include? 'admin'
	end

end
